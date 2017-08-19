package so.wwb.gamebox.lottery.hall.controller;

import org.soul.commons.collections.CollectionTool;
import org.soul.commons.collections.MapTool;
import org.soul.commons.lang.string.StringTool;
import org.soul.commons.query.sort.Direction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import so.wwb.gamebox.lottery.session.SessionManager;
import so.wwb.gamebox.lottery.tools.ServiceTool;
import so.wwb.gamebox.model.TerminalEnum;
import so.wwb.gamebox.model.company.lottery.po.*;
import so.wwb.gamebox.model.company.lottery.vo.LotteryFrequencyListVo;
import so.wwb.gamebox.model.company.lottery.vo.LotteryHandicapVo;
import so.wwb.gamebox.model.company.lottery.vo.LotteryResultListVo;
import so.wwb.gamebox.web.cache.Cache;

import java.util.LinkedHashMap;
import java.util.Map;


/**
 * 开奖结果表控制器
 *
 * @author shook
 * @time 2017-4-9 9:47:30
 */
@Controller
//region your codes 1
@RequestMapping("/lotteryResultHistory")
public class LotteryResultHistoryController {
//endregion your codes 1


    //region your codes 3

    @RequestMapping(value = "/toLotteryResultHistory")
    public String toLotteryResultHistory(LotteryResultListVo listVo, Model model) {
        Map<String, LotteryFrequencyType> lotteryFrequencyType = Cache.getLotteryFrequencyType();
        model.addAttribute("lotteryFrequencyType", lotteryFrequencyType);
        Map<String, SiteLottery> siteLotteryMap = Cache.getNormalSiteLotteryMap(TerminalEnum.PC.getCode(), SessionManager.getSiteId());
        buildResultData(listVo, siteLotteryMap, model);
        return "/hall/LotteryHistory";
    }

    private void buildResultData(LotteryResultListVo listVo, Map<String, SiteLottery> siteLotteryMap, Model model) {
        String code = "";
        String type = "";
        model.addAttribute("lotterys", siteLotteryMap);
        if (StringTool.isBlank(listVo.getSearch().getCode()) && MapTool.isNotEmpty(siteLotteryMap)) {
            for (SiteLottery siteLottery : siteLotteryMap.values()) {
                code = siteLottery.getCode();
                type = siteLottery.getType();
                break;
            }
            listVo.getSearch().setCode(code);
        } else {
            code = listVo.getSearch().getCode();
            type = siteLotteryMap.get(code).getType();
        }
        listVo.getQuery().addOrder(LotteryResult.PROP_OPEN_TIME, Direction.DESC);
        listVo.getQuery().addOrder(LotteryResult.PROP_EXPECT, Direction.DESC);
        listVo.getSearch().setOpenCodeFlag(true);
        listVo = ServiceTool.lotterResultService().search(listVo);
        listVo.getSearch().setType(type);
        model.addAttribute("code", code);
        model.addAttribute("type", type);
        model.addAttribute("command", listVo);
        Map<Object, LotteryHandicap> expectMaps = ServiceTool.lotteryHandicapService().queryLotteryExpectCount(new LotteryHandicapVo());
        model.addAttribute("expectMaps", expectMaps);
    }

    @RequestMapping(value = "/queryLotteryResultByCode")
    public String queryLotteryResultByCode(LotteryResultListVo listVo, Model model) {
        if (StringTool.isBlank(listVo.getSearch().getCode())) {
            return "/hall/LotteryHistory";
        }
        String url = "/hall/result/LotteryResult_" + listVo.getSearch().getCode();
        if (StringTool.isNotBlank(listVo.getSearch().getType())) {
            url = "/hall/result/LotteryResult_" + listVo.getSearch().getType();
        }
        listVo.getQuery().addOrder(LotteryResult.PROP_OPEN_TIME, Direction.DESC);
        listVo.getQuery().addOrder(LotteryResult.PROP_EXPECT, Direction.DESC);
        listVo.getSearch().setOpenCodeFlag(true);
        listVo = ServiceTool.lotterResultService().search(listVo);
        model.addAttribute("command", listVo);
        model.addAttribute("code", listVo.getSearch().getCode());
        model.addAttribute("type", listVo.getSearch().getType());
        Map<Object, LotteryHandicap> expectMaps = ServiceTool.lotteryHandicapService().queryLotteryExpectCount(new LotteryHandicapVo());
        model.addAttribute("expectMaps", expectMaps);
        return url;
    }

    @RequestMapping(value = "/queryLotteryByFrequency")
    public String queryLotteryByFrequency(LotteryFrequencyListVo listVo, Model model) {
        Map<String, SiteLottery> siteLotteryMap = Cache.getNormalSiteLotteryMap(TerminalEnum.PC.getCode(), SessionManager.getSiteId());
        if (listVo.getSearch().getLotteryFrequencyId() == null) {
            LotteryResultListVo resultListVo = new LotteryResultListVo();
            buildResultData(resultListVo, siteLotteryMap, model);
        } else {
            listVo = ServiceTool.lotteryFrequencyService().search(listVo);
            if (CollectionTool.isNotEmpty(listVo.getResult())) {
                LotteryResultListVo resultListVo = new LotteryResultListVo();
                Map<String, SiteLottery> stringLotteryMap = removeNoExistLottery(listVo, siteLotteryMap);
                buildResultData(resultListVo, stringLotteryMap, model);
            }
        }

        return "/hall/result/AllLottery";
    }

    private Map<String, SiteLottery> removeNoExistLottery(LotteryFrequencyListVo listVo, Map<String, SiteLottery> siteLotteryMap) {
        Map<String, SiteLottery> lotteryMap = new LinkedHashMap<>();
        for (Map.Entry<String, SiteLottery> entry : siteLotteryMap.entrySet()) {
            String code = entry.getKey();
            SiteLottery siteLottery = entry.getValue();
            boolean exist = false;
            for (LotteryFrequency frequency : listVo.getResult()) {
                if (siteLottery.getId().equals(frequency.getLotteryId())) {
                    exist = true;
                }
            }
            if (exist) {
                lotteryMap.put(code, siteLottery);
            }

        }
        return lotteryMap;
    }

    //endregion your codes 3

}