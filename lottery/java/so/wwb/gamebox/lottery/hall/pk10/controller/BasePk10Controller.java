package so.wwb.gamebox.lottery.hall.pk10.controller;

import org.soul.commons.collections.MapTool;
import org.soul.commons.data.json.JsonTool;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import so.wwb.gamebox.lottery.hall.controller.BaseLotteryController;
import so.wwb.gamebox.lottery.session.SessionManager;
import so.wwb.gamebox.model.company.lottery.po.LotteryHandicap;
import so.wwb.gamebox.model.company.lottery.po.SiteLotteryOdd;
import so.wwb.gamebox.model.enums.lottery.LotteryPlayEnum;
import so.wwb.gamebox.model.enums.lottery.LotteryTypeEnum;
import so.wwb.gamebox.web.cache.Cache;

import java.util.HashMap;
import java.util.Map;

/**
 * PK10
 * Created by fei on 17-4-5.
 */
@Controller
@RequestMapping("/pk10")
public class BasePk10Controller extends BaseLotteryController {
    /*大彩种*/
    static final String TYPE = LotteryTypeEnum.PK10.getCode();

    static final String INDEX_URL = "/hall/pk10/%s/Index";
    /**
     * 双面
     */
    static final String TWO_SIDE_URL = "/hall/pk10/%s/TwoSide";
    /**
     * 数字盘
     */
    static final String DIGIT_URL = "/hall/pk10/%s/Digit";
    /**
     * 名次（冠军 -> 第十名）
     */
    static final String RANKING_URL = "/hall/pk10/%s/Ranking";
    /**
     * 冠亚和
     */
    static final String SUM_URL = "/hall/pk10/%s/Sum";

    // 获取期数
    @RequestMapping("/getExpect")
    @ResponseBody
    public Map<String, Object> getExpect(String code) {
        Map<String, Object> map = new HashMap<>(4);
        LotteryHandicap handicap = getHandicap(code);
        setHandicap(map, handicap);
        return map;
    }

    // pk10最近5条开彩记录
    @RequestMapping("/getRecent5Records")
    @ResponseBody
    public String getRecent5Records(String code) {
        return JsonTool.toJson(getOpenHistory(code));
    }

    /**
     * pk10最近20条开彩记录
     *
     * @param code
     * @return
     */
    @RequestMapping("/getRecent30Records")
    @ResponseBody
    public String getRecent30Records(String code) {
        return JsonTool.toJson(getOpenHistory(code, 30, true));
    }


    /**
     * 初始化彩种玩法
     */
    private void initPlayCode(Model model) {
        model.addAttribute("pk10Digital", LotteryPlayEnum.PK10_DIGITAL.getCode());
        model.addAttribute("pk10BigSmall", LotteryPlayEnum.PK10_BIG_SMALL.getCode());
        model.addAttribute("pk10SingleDouble", LotteryPlayEnum.PK10_SINGLE_DOUBLE.getCode());
        model.addAttribute("pk10DragonTiger", LotteryPlayEnum.PK10_DRAGON_TIGER.getCode());
        model.addAttribute("championUp34", LotteryPlayEnum.CHAMPION_UP_34.getCode());
        model.addAttribute("championUp56", LotteryPlayEnum.CHAMPION_UP_56.getCode());
        model.addAttribute("championUp78", LotteryPlayEnum.CHAMPION_UP_78.getCode());
        model.addAttribute("championUp910", LotteryPlayEnum.CHAMPION_UP_910.getCode());
        model.addAttribute("championUpAlone11", LotteryPlayEnum.CHAMPION_UP_ALONE_11.getCode());
        model.addAttribute("championUpAlone34", LotteryPlayEnum.CHAMPION_UP_ALONE_34.getCode());
        model.addAttribute("championUpAlone56", LotteryPlayEnum.CHAMPION_UP_ALONE_56.getCode());
        model.addAttribute("championUpAlone78", LotteryPlayEnum.CHAMPION_UP_ALONE_78.getCode());
        model.addAttribute("championUpAlone910", LotteryPlayEnum.CHAMPION_UP_ALONE_910.getCode());
        model.addAttribute("championUpBigSmall", LotteryPlayEnum.CHAMPION_UP_BIG_SMALL.getCode());
        model.addAttribute("championUpSingleDouble", LotteryPlayEnum.CHAMPION_UP_SINGLE_DOUBLE.getCode());
    }

    private void initOdd(Model model, String code) {
        Map<String, SiteLotteryOdd> oddMap = Cache.getSiteLotteryOdds(SessionManager.getSiteId(), code);
        if (MapTool.isEmpty(oddMap)) {
            return;
        }
        Map<String, Map<String, SiteLotteryOdd>> map = new HashMap<>();
        for (SiteLotteryOdd odd : oddMap.values()) {
            if (map.get(odd.getBetCode()) == null) {
                map.put(odd.getBetCode(), new HashMap<String, SiteLotteryOdd>());
            }
            map.get(odd.getBetCode()).put(odd.getBetNum(), odd);
        }
        model.addAttribute("oddMap", map);
    }

    public void initData(Model model, String code) {
        initPlayCode(model);
        initOdd(model, code);
    }

}
