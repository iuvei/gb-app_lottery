package so.wwb.gamebox.lottery.hall.controller;

import org.soul.commons.lang.string.StringTool;
import org.soul.commons.query.sort.Direction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import so.wwb.gamebox.lottery.tools.ServiceTool;
import so.wwb.gamebox.model.company.enums.GameStatusEnum;
import so.wwb.gamebox.model.company.lottery.po.*;
import so.wwb.gamebox.model.company.lottery.vo.LotteryFrequencyListVo;
import so.wwb.gamebox.model.company.lottery.vo.LotteryHandicapVo;
import so.wwb.gamebox.model.company.lottery.vo.LotteryResultListVo;
import so.wwb.gamebox.web.cache.Cache;

import java.util.Iterator;
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
        Map<String, Lottery> lottery = Cache.getLottery();
        buildResultData(listVo, lottery, model);
        Map<Object, LotteryHandicap> expectMaps = ServiceTool.lotteryHandicapService().queryLotteryExpectCount(new LotteryHandicapVo());
        model.addAttribute("expectMaps",expectMaps);
        return "/hall/LotteryHistory";
    }

    private void buildResultData(LotteryResultListVo listVo, Map<String, Lottery> lottery, Model model) {
        String code = "";
        String type = "";
        model.addAttribute("lotterys", lottery);
        if (StringTool.isBlank(listVo.getSearch().getCode())) {
            if (lottery != null) {
                Iterator<String> iterator = lottery.keySet().iterator();
                while (iterator.hasNext()) {
                    String key = iterator.next();
                    Lottery lot = lottery.get(key);
                    if (GameStatusEnum.NORMAL.getCode().equals(lot.getStatus())) {
                        code = key;
                        type = lot.getType();
                        break;
                    }
                }
            }
            listVo.getSearch().setCode(code);
        } else {
            code = listVo.getSearch().getCode();
            type=lottery.get(code).getType();
        }
        listVo.getQuery().addOrder(LotteryResult.PROP_OPEN_TIME, Direction.DESC);
        listVo.getQuery().addOrder(LotteryResult.PROP_EXPECT, Direction.DESC);
        listVo = ServiceTool.lotterResultService().search(listVo);
        listVo.getSearch().setType(type);
        model.addAttribute("code", code);
        model.addAttribute("type", type);
        model.addAttribute("command", listVo);
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
        listVo = ServiceTool.lotterResultService().search(listVo);
        model.addAttribute("command", listVo);
        model.addAttribute("code", listVo.getSearch().getCode());
        model.addAttribute("type", listVo.getSearch().getType());
        Map<Object, LotteryHandicap> expectMaps = ServiceTool.lotteryHandicapService().queryLotteryExpectCount(new LotteryHandicapVo());
        model.addAttribute("expectMaps",expectMaps);
        return url;
    }

    @RequestMapping(value = "/queryLotteryByFrequency")
    public String queryLotteryByFrequency(LotteryFrequencyListVo listVo, Model model) {
        Map<String, Lottery> lottery = Cache.getLottery();
        if (listVo.getSearch().getLotteryFrequencyId() == null) {
            LotteryResultListVo resultListVo = new LotteryResultListVo();
            buildResultData(resultListVo, lottery, model);
        } else {
            listVo = ServiceTool.lotteryFrequencyService().search(listVo);
            if (listVo.getResult() != null && listVo.getResult().size() > 0) {
                LotteryResultListVo resultListVo = new LotteryResultListVo();
                Map<String, Lottery> stringLotteryMap = removeNoExistLottery(listVo, lottery);
                buildResultData(resultListVo, stringLotteryMap, model);
            }
        }

        //lotterys
        return "/hall/result/AllLottery";
    }

    private Map<String, Lottery> removeNoExistLottery(LotteryFrequencyListVo listVo, Map<String, Lottery> lottery) {
        Map<String, Lottery> lotteryMap = new LinkedHashMap<>();
        for (Map.Entry<String, Lottery> entry : lottery.entrySet()) {
            String key = entry.getKey();
            Lottery lot = entry.getValue();
            boolean exist = false;
            for (LotteryFrequency frequency : listVo.getResult()) {
                if (lot.getId().equals(frequency.getLotteryId())) {
                    exist = true;
                }
            }
            if (exist) {
                lotteryMap.put(key, lot);
            }

        }
        return lotteryMap;
    }

    //endregion your codes 3

}