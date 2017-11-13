package so.wwb.gamebox.lottery.hall.controller;

import org.soul.commons.collections.CollectionQueryTool;
import org.soul.commons.collections.CollectionTool;
import org.soul.commons.collections.MapTool;
import org.soul.commons.currency.CurrencyTool;
import org.soul.commons.data.json.JsonTool;
import org.soul.commons.lang.string.StringTool;
import org.soul.commons.query.sort.Order;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import so.wwb.gamebox.lottery.session.SessionManager;
import so.wwb.gamebox.lottery.tools.ServiceTool;
import so.wwb.gamebox.model.ParamTool;
import so.wwb.gamebox.model.TerminalEnum;
import so.wwb.gamebox.model.company.lottery.po.LotteryFrequency;
import so.wwb.gamebox.model.company.lottery.po.LotteryResult;
import so.wwb.gamebox.model.company.lottery.po.SiteLottery;
import so.wwb.gamebox.model.company.lottery.vo.LotteryFrequencyListVo;
import so.wwb.gamebox.model.company.lottery.vo.LotteryResultVo;
import so.wwb.gamebox.model.enums.lottery.LotteryFrequencyEnum;
import so.wwb.gamebox.model.master.player.po.VPlayerApi;
import so.wwb.gamebox.web.cache.Cache;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 购彩大厅
 * Created by fei on 17-4-4.
 */
@Controller
@RequestMapping("/hall")
public class HallController extends BaseLotteryController {

    /**
     * 大厅首页
     */
    private static final String HALL_INDEX_URL = "/hall/Index";
    /**
     * 大厅主页
     */
    private static final String HALL_LOTERY_URL = "/hall/Lottery";

    private static final String HALL_PLAY_URL = "/hall/play/";

    @RequestMapping("/index")
    public String hallIndex(Model model,String type, String code) {
        List<SiteLottery> normalLotteries = Cache.getNormalSiteLottery(TerminalEnum.PC.getCode(), SessionManager.getSiteId());
        if(CollectionTool.isNotEmpty(normalLotteries)){
            Map<String, SiteLottery> siteLotteryMap = CollectionTool.toEntityMap(normalLotteries, SiteLottery.PROP_CODE, String.class);
            //高频彩票
            LotteryFrequencyListVo gfrequencyL = new LotteryFrequencyListVo();
            gfrequencyL.getSearch().setLotteryFrequencyId(1);
            LotteryFrequencyListVo high = ServiceTool.lotteryFrequencyService().search(gfrequencyL);
            gfrequencyL.getSearch().setLotteryFrequencyId(2);
            LotteryFrequencyListVo low = ServiceTool.lotteryFrequencyService().search(gfrequencyL);

            indexFrequencyType(model, high.getResult(), LotteryFrequencyEnum.HIGH.getType(), siteLotteryMap);
            indexFrequencyType(model, low.getResult(), LotteryFrequencyEnum.LOW.getType(), siteLotteryMap);
            model.addAttribute("player", getPlayerApi());

            model.addAttribute("hot", normalLotteries);
            model.addAttribute("lotteryCodes",siteLotteryMap.keySet());
            if(StringTool.isNotEmpty(type) && StringTool.isNotEmpty(code)){
                model.addAttribute("type", type);
                model.addAttribute("code", code);
            }
            //是否是纯彩票站
            model.addAttribute("isLotterySite", ParamTool.isLotterySite(SessionManager.getSiteId()));
        }
        return HALL_INDEX_URL;
    }

    @RequestMapping("/{type}")
    public String index(@PathVariable String type) {

        return HALL_PLAY_URL + type;
    }

    public void indexFrequencyType(Model model, List<LotteryFrequency> list, String lotteryType, Map<String, SiteLottery> siteLotteryMap) {
        List<Map<String, String>> lm = new ArrayList<>();
        SiteLottery siteLottery;
        for (LotteryFrequency type : list) {
            siteLottery = siteLotteryMap.get(type.getLotteryCode());
            if (siteLottery != null) {
                Map<String, String> map = new HashMap<>(2, 1f);
                map.put("code", siteLottery.getCode());
                map.put("type", siteLottery.getType());
                lm.add(map);
            }
        }
        model.addAttribute(lotteryType, lm);
    }

    @RequestMapping("/lottery")
    public String lottery(Model model) {
        getHandicap(model);
        getLotteryResult(model);
        return HALL_LOTERY_URL;
    }

    /**
     * 获取单个彩种盘口
     *
     * @param code
     * @return
     */
    @RequestMapping("/handicap")
    @ResponseBody
    public String handicap(String code) {
        return super.handicap(code);
    }


    @RequestMapping("/lotteryResult")
    @ResponseBody
    public String lotteryResult(String code) {
        Map<String, Object> map = new HashMap<>(1, 1f);
        List<LotteryResult> result = getOpenHistory(code, 1, false);
        map.put("lottery", result);
        return JsonTool.toJson(map);
    }

    /**
     * 查询最近盘口
     *
     * @param model
     */
    private void getHandicap(Model model) {
        List<LotteryResult> lotteryHandicapList = ServiceTool.lotteryResultService().queryCurHandicap(new LotteryResultVo());
        model.addAttribute("handicapList", handleHandicap(lotteryHandicapList, Cache.getNormalSiteLotteryMap(TerminalEnum.PC.getCode(), SessionManager.getSiteId())));
    }

    /**
     * 处理盘口数据
     */
    private List<LotteryResult> handleHandicap(List<LotteryResult> lotteryHandicapList, Map<String, SiteLottery> siteLotteryMap) {
        if (CollectionTool.isEmpty(lotteryHandicapList) || MapTool.isEmpty(siteLotteryMap)) {
            return null;
        }
        List<LotteryResult> lotteryResultList = new ArrayList<>();
        SiteLottery siteLottery;
        for (LotteryResult handicap : lotteryHandicapList) {
            siteLottery = siteLotteryMap.get(handicap.getCode());
            if (siteLottery != null) {
                handicap.setOrderNum(siteLottery.getOrderNum());
                handicap.setType(siteLottery.getType());
                lotteryResultList.add(handicap);
            }
        }
        return CollectionQueryTool.sort(lotteryResultList, Order.asc(LotteryResult.PROP_ORDER_NUM));
    }

    /**
     * 查询最近开奖结果
     *
     * @param model
     */
    private void getLotteryResult(Model model) {
        List<LotteryResult> results = ServiceTool.lotterResultService().queryRecentResult(new LotteryResultVo());
        model.addAttribute("resultMap", CollectionTool.toEntityMap(results, LotteryResult.PROP_CODE));
    }

    @RequestMapping("/getAccountAndBalance")
    @ResponseBody
    public Map getAccountAndBalance() {
        VPlayerApi playerApi = getPlayerApi();
        Map<String,String> result = null;
        if (playerApi != null && playerApi.getMoney() != null && StringTool.isNotEmpty(playerApi.getAccount())) {
            result = new HashMap<>(2,1f);
            result.put("account",playerApi.getAccount());
            result.put("balance",CurrencyTool.formatCurrency(playerApi.getMoney()));
        }
        return result;
    }

}
