package so.wwb.gamebox.lottery.hall.controller;

import org.soul.commons.collections.CollectionQueryTool;
import org.soul.commons.collections.CollectionTool;
import org.soul.commons.currency.CurrencyTool;
import org.soul.commons.data.json.JsonTool;
import org.soul.commons.lang.string.StringTool;
import org.soul.commons.query.sort.Order;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import so.wwb.gamebox.lottery.tools.ServiceTool;
import so.wwb.gamebox.model.TerminalEnum;
import so.wwb.gamebox.model.company.enums.GameStatusEnum;
import so.wwb.gamebox.model.company.lottery.po.Lottery;
import so.wwb.gamebox.model.company.lottery.po.LotteryFrequency;
import so.wwb.gamebox.model.company.lottery.po.LotteryHandicapBase;
import so.wwb.gamebox.model.company.lottery.po.LotteryResult;
import so.wwb.gamebox.model.company.lottery.vo.LotteryFrequencyListVo;
import so.wwb.gamebox.model.company.lottery.vo.LotteryHandicapLhcVo;
import so.wwb.gamebox.model.company.lottery.vo.LotteryHandicapVo;
import so.wwb.gamebox.model.company.lottery.vo.LotteryResultVo;
import so.wwb.gamebox.model.enums.lottery.LotteryFrequencyEnum;
import so.wwb.gamebox.model.master.player.po.VPlayerApi;
import so.wwb.gamebox.web.cache.Cache;

import java.util.*;

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
    public String index(Model model) {
        Map<String, Lottery> lottery = Cache.getLotteryByTerminal(TerminalEnum.PC.getCode());
        //高频彩票
        LotteryFrequencyListVo gfrequencyL = new LotteryFrequencyListVo();
        gfrequencyL.getSearch().setLotteryFrequencyId(1);
        LotteryFrequencyListVo high = ServiceTool.lotteryFrequencyService().search(gfrequencyL);
        gfrequencyL.getSearch().setLotteryFrequencyId(2);
        LotteryFrequencyListVo low = ServiceTool.lotteryFrequencyService().search(gfrequencyL);

        indexFrequencyType(model, high.getResult(), lottery, LotteryFrequencyEnum.HIGH.getType());
        indexFrequencyType(model, low.getResult(), lottery, LotteryFrequencyEnum.LOW.getType());
        model.addAttribute("player", getPlayerApi());

        Collection<Lottery> lot = lottery.values();
        model.addAttribute("hot", CollectionQueryTool.sort(new ArrayList<>(lot), Order.desc(Lottery.PROP_ORDER_NUM)));
        return HALL_INDEX_URL;
    }

    @RequestMapping("/{type}")
    public String index(@PathVariable String type) {

        return HALL_PLAY_URL + type;
    }

    public void indexFrequencyType(Model model, List<LotteryFrequency> list, Map<String, Lottery> lottery, String lotteryType) {
        List<Map<String, String>> lm = new ArrayList<>();
        for (LotteryFrequency type : list) {
            Lottery lot = lottery.get(type.getLotteryCode());
            if (lot != null) {
                if (StringTool.equals(GameStatusEnum.NORMAL.getCode(), lot.getStatus())) {
                    Map<String, String> map = new HashMap<>(2);
                    map.put("code", lot.getCode());
                    map.put("type", lot.getType());
                    lm.add(map);
                }
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
        Map<String, Object> map = new HashMap<>(1);
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
        Map<String, Lottery> lottery = Cache.getLotteryByTerminal(TerminalEnum.PC.getCode());
        List<LotteryHandicapBase> lotteryHandicapList = ServiceTool.lotteryHandicapService().queryCurHandicap(new LotteryHandicapVo());
        List<LotteryHandicapBase> lotteryHandicapLhcList = ServiceTool.lotteryHandicapLhcService().queryCurHandicap(new LotteryHandicapLhcVo());
        List<LotteryHandicapBase> handicapList = new ArrayList<>();
        if (CollectionTool.isNotEmpty(lotteryHandicapList)) {
            handleHandicap(handicapList, lotteryHandicapList, lottery);
        }
        if (CollectionTool.isNotEmpty(lotteryHandicapLhcList)) {
            handleHandicap(handicapList, lotteryHandicapLhcList, lottery);
        }
        handicapList = CollectionQueryTool.sort(handicapList, Order.desc(LotteryHandicapBase.PROP_ORDER_NUM));
        model.addAttribute("handicapList", handicapList);
    }

    /**
     * 处理盘口数据
     */
    private void handleHandicap(List<LotteryHandicapBase> handicapList, List<LotteryHandicapBase> lotteryHandicapList, Map<String, Lottery> lottery) {
        for (LotteryHandicapBase handicap : lotteryHandicapList) {
            Lottery lot = lottery.get(handicap.getCode());
            if (lot != null) {
                if (StringTool.equals(GameStatusEnum.NORMAL.getCode(), lot.getStatus())) {
                    handicap.setOrderNum(lot.getOrderNum());
                    handicap.setType(lot.getType());
                    handicapList.add(handicap);
                }
            }
        }
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

    @RequestMapping("/getBalance")
    @ResponseBody
    public String getBalance() {
        VPlayerApi playerApi = getPlayerApi();
        String balance = "0.00";
        if (playerApi != null && playerApi.getMoney() != null) {
            balance = CurrencyTool.formatCurrency(playerApi.getMoney());
        }
        return JsonTool.toJson(balance);
    }

}
