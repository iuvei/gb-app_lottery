package so.wwb.gamebox.lottery.bet.controller;

import org.soul.commons.data.json.JsonTool;
import org.soul.commons.dict.DictTool;
import org.soul.commons.lang.string.I18nTool;
import org.soul.commons.lang.string.StringTool;
import org.soul.commons.query.sort.Direction;
import org.soul.model.sys.po.SysDict;
import org.soul.web.session.SessionManagerBase;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import so.wwb.gamebox.lottery.session.SessionManager;
import so.wwb.gamebox.lottery.tools.ServiceTool;
import so.wwb.gamebox.model.DictEnum;
import so.wwb.gamebox.model.Module;
import so.wwb.gamebox.model.SubSysCodeEnum;
import so.wwb.gamebox.model.enums.lottery.LotteryEnum;
import so.wwb.gamebox.model.enums.lottery.LotteryOrderStatusEnum;
import so.wwb.gamebox.model.master.lottery.po.LotteryBetOrder;
import so.wwb.gamebox.model.master.lottery.vo.LotteryBetOrderListVo;
import so.wwb.gamebox.web.SessionManagerCommon;
import so.wwb.gamebox.web.cache.Cache;

import java.util.List;
import java.util.Map;

/**
 * 投注记录
 * Created by fei on 17-4-10.
 */
@Controller
@RequestMapping("/bet")
public class BetOrderController {
    private static final String INDEX_URL = "/bet/Index";

    // 投注页面-我的投注记录
    @RequestMapping("/getMyOrders")
    @ResponseBody
    public String getMyOrders() {
        LotteryBetOrderListVo listVo = new LotteryBetOrderListVo();
        listVo.getPaging().setPageSize(5);
        listVo.getSearch().setUserId(SessionManager.getUserId());
        listVo.getSearch().setStatus(LotteryOrderStatusEnum.PENDING.getCode());
        List<LotteryBetOrder> betOrders = ServiceTool.lotteryBetOrderService().getBetOrders(listVo);
        return transLotteryBetOrder(betOrders);
    }

    /**
     * 获取中奖记录
     * @return
     */
    @RequestMapping("/getMyReward")
    @ResponseBody
    public String getMyReward() {
        LotteryBetOrderListVo listVo = new LotteryBetOrderListVo();
        listVo.getPaging().setPageSize(5);
        listVo.getSearch().setUserId(SessionManager.getUserId());
        listVo.getSearch().setStatus(LotteryOrderStatusEnum.SETTLED.getCode());
        List<LotteryBetOrder> betOrders = ServiceTool.lotteryBetOrderService().getRewardBetOrders(listVo);
        return transLotteryBetOrder(betOrders);
    }

    private String transLotteryBetOrder(List<LotteryBetOrder> betOrders) {
        Map<String, Map<String, String>> dicts = I18nTool.getDictsMap(SessionManager.getLocale().toString()).get(Module.LOTTERY.getCode());
        Map<String, String> codeDicts = dicts.get(DictEnum.LOTTERY.getType());
        Map<String,String> betCodeDicts = dicts.get(DictEnum.LOTTERY_BETTING.getType());
        for (LotteryBetOrder betOrder : betOrders) {
            betOrder.setCodeMemo(codeDicts.get(betOrder.getCode()));
            betOrder.setBetCodeMemo(betCodeDicts.get(betOrder.getBetCode()));
        }
        Cache.getSysSiteUser();
        return JsonTool.toJson(betOrders);
    }

    // 我的投注记录
    @RequestMapping("/betOrders")
    public String getBetOrders(LotteryBetOrderListVo listVo, Model model) {

        Map<String, SysDict> stringSerializableMap = DictTool.getDict("lottery", "lottery");
        if (StringTool.isBlank(listVo.getSearch().getCode())) {
            listVo.getSearch().setCode(LotteryEnum.CQSSC.getCode());
        }
        model.addAttribute("lotterys", stringSerializableMap);
        model.addAttribute("orderStatus", DictTool.get(DictEnum.ORDER_STATUS));
        listVo.getQuery().addOrder(LotteryBetOrder.PROP_EXPECT, Direction.DESC);
        model.addAttribute("lotteryPlays", DictTool.get(DictEnum.LOTTERY_PLAY));

        // 彩种
        //model.addAttribute("lotteryMap", Cache.getLottery());
        if (SubSysCodeEnum.PCENTER.getCode().equals(SessionManagerCommon.getUser().getSubsysCode())) {
            listVo.getSearch().setUserId(SessionManagerBase.getUserId());
        }
        List<LotteryBetOrder> betOrders = ServiceTool.lotteryBetOrderService().getBetOrders(listVo);
        model.addAttribute("betOrders", betOrders);
        return INDEX_URL;
    }

    // 根据彩种查找玩法
    @RequestMapping("/getPlayByCode")
    @ResponseBody
    public String getPlayByCode(String code) {
        return JsonTool.toJson(Cache.getLotteryPlay(code));
    }

}
