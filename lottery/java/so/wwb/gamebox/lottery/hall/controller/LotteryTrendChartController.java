package so.wwb.gamebox.lottery.hall.controller;

import org.soul.commons.collections.CollectionTool;
import org.soul.commons.data.json.JsonTool;
import org.soul.commons.lang.string.StringTool;
import org.soul.commons.query.sort.Direction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import so.wwb.gamebox.common.dubbo.ServiceCpTool;
import so.wwb.gamebox.lottery.session.SessionManager;
import so.wwb.gamebox.model.CacheBase;
import so.wwb.gamebox.model.TerminalEnum;
import so.wwb.gamebox.model.company.lottery.po.LotteryFrequency;
import so.wwb.gamebox.model.company.lottery.po.LotteryResult;
import so.wwb.gamebox.model.company.lottery.po.SiteLottery;
import so.wwb.gamebox.model.company.lottery.vo.LotteryFrequencyListVo;
import so.wwb.gamebox.model.company.lottery.vo.LotteryResultListVo;
import so.wwb.gamebox.model.enums.lottery.LotteryEnum;
import so.wwb.gamebox.model.enums.lottery.LotteryFrequencyEnum;
import so.wwb.gamebox.web.cache.Cache;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


/**
 * 彩票开奖趋势图表
 *
 * @author devin
 * @time 2017-9-20
 */
@Controller
//region your codes 1
@RequestMapping("/lotteryTrendChart")
public class LotteryTrendChartController {
//endregion your codes 1
    //region your codes 3
static final String INDEX_URL = "hall/trendchart/%s/Index";

    @RequestMapping(value = "/toLotteryTrendChart")
    public String toLotteryTrendChart(LotteryResultListVo listVo, Model model) {
        getLottery(model);
        return "/hall/LotteryTrendChart";
    }
    @RequestMapping(value = "/queryLotteryTrend/{code}")
    public String queryLotteryTrend(Model model, @PathVariable String code,String dataId) {
        getLottery(model);
        String type ="";
        for (LotteryEnum lotteryEnum : LotteryEnum.values()) {
            if (lotteryEnum.getCode().equals(code)){
               type = lotteryEnum.getType();
            }
        }
        if (LotteryEnum.HKLHC.getCode().equals(code)) {
            Map<String, String> lhcZodiacNum = CacheBase.getLotteryLhcZodiacNum();
            model.addAttribute("lhcmap", JsonTool.toJson(lhcZodiacNum));
        }
        if (StringTool.isBlank(dataId)) {
            dataId = "shuju1";
        }
        model.addAttribute("dataId",dataId);
        model.addAttribute("code",code);
        model.addAttribute("lotterytype",type);
        return  String.format(INDEX_URL, type);
    }

    /**
     * 获取彩票开奖历史数据
     * @param listVo
     * @param model
     * @return
     */
    @RequestMapping(value = "/getLotteryHistory")
    @ResponseBody
    public  String getLotteryHistory(LotteryResultListVo listVo,Model model){
        listVo.getQuery().addOrder(LotteryResult.PROP_OPEN_TIME, Direction.DESC);
        listVo.getQuery().addOrder(LotteryResult.PROP_EXPECT, Direction.DESC);
        listVo.getSearch().setOpenCodeFlag(true);
        int pageSize = listVo.getPaging().getPageSize();
        if (pageSize!=30 && pageSize != 80 && pageSize != 50 && pageSize != 100 && pageSize != 150 && pageSize!=200){ //防止随意输入pageSize,造成数据泄漏
            listVo.getPaging().setPageSize(30);
        }
        listVo = ServiceCpTool.lotterResultService().search(listVo);
        return JsonTool.toJson(listVo.getResult());
    }
    private  void  getLottery(Model model){
        List<SiteLottery> normalLotteries = Cache.getNormalSiteLottery(TerminalEnum.PC.getCode(), SessionManager.getSiteId());
        if(CollectionTool.isNotEmpty(normalLotteries)){
            Map<String, SiteLottery> siteLotteryMap = CollectionTool.toEntityMap(normalLotteries, SiteLottery.PROP_CODE, String.class);
            //高频彩票
            LotteryFrequencyListVo gfrequencyL = new LotteryFrequencyListVo();
            gfrequencyL.getSearch().setLotteryFrequencyId(1);
            LotteryFrequencyListVo high = ServiceCpTool.lotteryFrequencyService().search(gfrequencyL);
            gfrequencyL.getSearch().setLotteryFrequencyId(2);
            LotteryFrequencyListVo low = ServiceCpTool.lotteryFrequencyService().search(gfrequencyL);

            indexFrequencyType(model, high.getResult(), LotteryFrequencyEnum.HIGH.getType(), siteLotteryMap);
            indexFrequencyType(model, low.getResult(), LotteryFrequencyEnum.LOW.getType(), siteLotteryMap);

            model.addAttribute("hot", normalLotteries);
            model.addAttribute("lotteryCodes",siteLotteryMap.keySet());
        }
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
    //endregion your codes 3

}