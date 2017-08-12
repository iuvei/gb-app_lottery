package so.wwb.gamebox.lottery.hall.ssc.controller;

import org.soul.commons.data.json.JsonTool;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import so.wwb.gamebox.lottery.hall.controller.BaseLotteryController;
import so.wwb.gamebox.model.company.lottery.po.LotteryHandicap;
import so.wwb.gamebox.model.company.lottery.po.LotteryResult;
import so.wwb.gamebox.model.company.lottery.po.SiteLotteryOdd;
import so.wwb.gamebox.model.enums.lottery.LotteryBettingEnum;
import so.wwb.gamebox.model.enums.lottery.LotteryPlayEnum;
import so.wwb.gamebox.model.enums.lottery.LotteryTypeEnum;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 时时彩
 * Created by fei on 17-4-3.
 */
@Controller
@RequestMapping("/ssc")
public class BaseSscController extends BaseLotteryController {
    /*大彩种*/
    static final String TYPE = LotteryTypeEnum.SSC.getCode();

    static final String INDEX_URL = "/hall/ssc/%s/Index";
    /**
     * 双面
     */
    static final String TWO_SIDE_URL = "/hall/ssc/include/TwoSide";
    /**
     * 数字盘
     */
    static final String DIGIT_URL = "/hall/ssc/include/Digit";
    /**
     * 一字定位
     */
    static final String ONE_WORD_FIX_URL = "/hall/ssc/include/OneWordFix";
    /**
     * 二字定位
     */
    static final String TWO_WORD_FIX_URL = "/hall/ssc/include/TwoWordFix";
    /**
     * 三字定位
     */
    static final String THREE_WORD_FIX_URL = "/hall/ssc/include/ThreeWordFix";
    /**
     * 一字组合
     */
    static final String ONE_WORD_COMB_URL = "/hall/ssc/include/OneWordComb";
    /**
     * 二字和数
     */
    static final String TWO_WORD_SUM_URL = "/hall/ssc/include/TwoWordSum";
    /**
     * 跨度
     */
    static final String SPAN_URL = "/hall/ssc/include/Span";
    /**
     * 龙虎
     */
    static final String DRAGONTIGER_URL = "/hall/ssc/include/DragonTiger";
    /**
     * 组选三
     */
    static final String GROUPTHREE_URL = "/hall/ssc/include/GroupThree";
    /**
     * 组选六
     */
    static final String GROUPSIX_URL = "/hall/ssc/include/GroupSix";

    // 双面玩法
    public String twoSide(Model model, String code) {
        initTwoSide(model, code);
        return TWO_SIDE_URL;
    }

    // 数字盘
    public String digit(Model model, String code) {
        Map<String, SiteLotteryOdd> siteLotteryOdds = getSiteLotteryOdds(code);
        initDigit(model, code, siteLotteryOdds);
        return DIGIT_URL;
    }

    // 一字定位
    public String oneWordFix(Model model, String code) {
        initOneWordFix(model, code);
        return ONE_WORD_FIX_URL;
    }


    // 二字定位
    public String twoWordFix(Model model, String code) {
        initTwoWordFix(model, code);
        return TWO_WORD_FIX_URL;
    }

    // 二字定位
    public String threeWordFix(Model model, String code) {
        initThreeWordFix(model, code);
        return THREE_WORD_FIX_URL;
    }

    // 二字和数
    public String twoWordSum(Model model, String code) {
        initTwoWordSum(model, code);
        return TWO_WORD_SUM_URL;
    }

    // 一字组合
    public String oneWordComb(Model model, String code) {
        initOneWordComb(model, code);
        return ONE_WORD_COMB_URL;
    }

    // 跨度
    public String span(Model model, String code) {
        initSpan(model, code);
        return SPAN_URL;
    }


    // 龙虎
    public String dragontiger(Model model, String code) {
        Map<String, SiteLotteryOdd> siteLotteryOdds = getSiteLotteryOdds(code);
        initDragontiger(model, code, siteLotteryOdds);
        //todo 要增加一个新的jsp来实现龙虎的页面展示,下面的url指定的jsp是旧的
        return DRAGONTIGER_URL;
    }
    // 组选三
    public String groupThreeInit(Model model, String code) {
        initGroupThree(model, code);
        return GROUPTHREE_URL;
    }
    // 组选六
    public String groupSixInit(Model model, String code) {
        initGroupSix(model, code);
        return GROUPSIX_URL;
    }

    // 获取期数
    @RequestMapping("/getExpect")
    @ResponseBody
    public Map<String, Object> getExpect(String code) {
        Map<String, Object> map = new HashMap<>(4,1f);
        LotteryResult handicap = getHandicap(code);
        setHandicap(map, handicap);
        return map;
    }


    // 时时彩最近5条开彩记录
    @RequestMapping("/getRecent5Records")
    @ResponseBody
    public String getRecent5Records(String code) {
        return JsonTool.toJson(getOpenHistory(code));
    }

    /**
     * 时时彩最近20条开彩记录
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
        model.addAttribute("oneDigital", LotteryPlayEnum.ONE_DIGITAL.getCode());
        model.addAttribute("oneBigSmall", LotteryPlayEnum.ONE_BIG_SMALL.getCode());
        model.addAttribute("oneSingleDouble", LotteryPlayEnum.ONE_SINGLE_DOUBLE.getCode());
        model.addAttribute("onePrimeCombined", LotteryPlayEnum.ONE_PRIME_COMBINED.getCode());
        model.addAttribute("oneCombination", LotteryPlayEnum.ONE_COMBINATION.getCode());
        model.addAttribute("twoDigital", LotteryPlayEnum.TWO_DIGITAL.getCode());
        model.addAttribute("twoCombination", LotteryPlayEnum.TWO_COMBINATION.getCode());
        model.addAttribute("twoSumSingleDouble", LotteryPlayEnum.TWO_SUM_SINGLE_DOUBLE.getCode());
        model.addAttribute("threeDigital", LotteryPlayEnum.THREE_DIGITAL.getCode());
        model.addAttribute("fiveSumBigSmall", LotteryPlayEnum.FIVE_SUM_BIG_SMALL.getCode());
        model.addAttribute("fiveSumSingleDouble", LotteryPlayEnum.FIVE_SUM_SINGLE_DOUBLE.getCode());
        model.addAttribute("dragonTigerTie", LotteryPlayEnum.DRAGON_TIGER_TIE.getCode());
        model.addAttribute("groupThree", LotteryPlayEnum.GROUP_THREE.getCode());
        model.addAttribute("groupSix", LotteryPlayEnum.GROUP_SIX.getCode());
        model.addAttribute("span", LotteryPlayEnum.SPAN.getCode());
        model.addAttribute("dragonTiger", LotteryPlayEnum.DRAGON_TIGER.getCode());
    }

    /**
     * 获取相关赔率信息
     *
     * @param code
     * @param betCode
     * @return
     */
    @RequestMapping("/getBetOdds")
    @ResponseBody
    public Map<String, SiteLotteryOdd> getBetOdds(String code, String betCode) {
        //赔率
        return getOdds(code, betCode);
    }

    /**
     * 初始化数字盘
     *
     * @param model
     * @param code
     * @param siteLotteryOdds
     */
    public void initDigit(Model model, String code, Map<String, SiteLotteryOdd> siteLotteryOdds) {
        //玩法
        initPlayCode(model);
        //赔率
        List<Map<String, SiteLotteryOdd>> oddList = new ArrayList<>();
        oddList.add(getOdds(LotteryBettingEnum.TEN_THOUSAND.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.THOUSAND.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.HUNDRED.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.TEN.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.ONE.getCode(), siteLotteryOdds));
        model.addAttribute("oddList", oddList);
    }

    /**
     * 初始化双面
     *
     * @param model
     * @param code
     */
    public void initTwoSide(Model model, String code) {
        Map<String, SiteLotteryOdd> siteLotteryOdds = getSiteLotteryOdds(code);
        initDigit(model, code, siteLotteryOdds);
        model.addAttribute("fiveSumOdd", getOdds(LotteryBettingEnum.FIVE_SUM.getCode(), siteLotteryOdds));
        model.addAttribute("dragonTigerTieOdd", getOdds(LotteryBettingEnum.DRAGON_TIGER_TIE.getCode(), siteLotteryOdds));
    }

    /**
     * 初始化一字定位
     *
     * @param model
     * @param code
     */
    public void initOneWordFix(Model model, String code) {
        Map<String, SiteLotteryOdd> siteLotteryOdds = getSiteLotteryOdds(code);
        //赔率
        model.addAttribute("odds", getOdds(LotteryBettingEnum.TEN_THOUSAND.getCode(), siteLotteryOdds));
        model.addAttribute("fiveSumOdd", getOdds(LotteryBettingEnum.FIVE_SUM.getCode(), siteLotteryOdds));
        model.addAttribute("dragonTigerTieOdd", getOdds(LotteryBettingEnum.DRAGON_TIGER_TIE.getCode(), siteLotteryOdds));
        //玩法
        initPlayCode(model);
    }

    /**
     * 初始化二字定位
     *
     * @param model
     * @param code
     */
    public void initTwoWordFix(Model model, String code) {
        model.addAttribute("code", code);
        //玩法
        initPlayCode(model);
    }

    /**
     * 初始化三字定位
     *
     * @param model
     * @param code
     */
    public void initThreeWordFix(Model model, String code) {

        model.addAttribute("code", code);
        //玩法
        initPlayCode(model);
    }

    /**
     * 初始化一字组合
     *
     * @param model
     * @param code
     * @param
     */
    public void initOneWordComb(Model model, String code) {
        //赔率
        model.addAttribute("odds", getOdds(code, LotteryBettingEnum.ONE_ALL_FIVE.getCode()));
        model.addAttribute("code", code);
        //玩法
        initPlayCode(model);
    }

    /**
     * 初始化跨度
     *
     * @param model
     * @param code
     */
    public void initSpan(Model model, String code) {

        model.addAttribute("code", code);
        //玩法
        initPlayCode(model);
    }


    /**
     * 初始化龙虎
     *
     * @param model
     * @param code
     */
    public void initDragontiger(Model model, String code,Map<String, SiteLotteryOdd> siteLotteryOdds) {
        //赔率
        List<Map<String, SiteLotteryOdd>> oddList = new ArrayList<>();
        oddList.add(getOdds(LotteryBettingEnum.DRAGON_TIGER_12.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.DRAGON_TIGER_13.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.DRAGON_TIGER_14.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.DRAGON_TIGER_15.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.DRAGON_TIGER_23.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.DRAGON_TIGER_24.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.DRAGON_TIGER_25.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.DRAGON_TIGER_34.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.DRAGON_TIGER_35.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.TEN_ONE.getCode(), siteLotteryOdds));
        model.addAttribute("oddList", oddList);
        model.addAttribute("code", code);
        //玩法
        initPlayCode(model);
    }

    /**
     * 初始化二字和数
     *
     * @param model
     * @param code
     */
    public void initTwoWordSum(Model model, String code) {
        Map<String, SiteLotteryOdd> siteLotteryOdds = getSiteLotteryOdds(code);
        //赔率
        List<Map<String, SiteLotteryOdd>> oddList = new ArrayList<>();
        oddList.add(getOdds(LotteryBettingEnum.TEN_THOUSAND_THOUSAND.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.TEN_THOUSAND_HUNDRED.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.TEN_THOUSAND_TEN.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.TEN_THOUSAND_ONE.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.THOUSAND_HUNDRED.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.THOUSAND_TEN.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.THOUSAND_ONE.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.HUNDRED_TEN.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.HUNDRED_ONE.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.TEN_ONE.getCode(), siteLotteryOdds));
        model.addAttribute("oddList", oddList);
        //玩法
        initPlayCode(model);
    }
    /**
     * 初始化组选三
     *
     * @param model
     * @param code
     */
    public void initGroupThree(Model model, String code) {
        //赔率
        model.addAttribute("odds", getOdds(code, LotteryBettingEnum.GROUP3_FIRST_THREE.getCode()));
        model.addAttribute("code", code);
        model.addAttribute("lotteryPlay",LotteryPlayEnum.GROUP_THREE.getCode());
        //玩法
        initPlayCode(model);
    }
    /**
     * 初始化组选三
     *
     * @param model
     * @param code
     */
    public void initGroupSix(Model model, String code) {
        //赔率
        model.addAttribute("odds", getOdds(code, LotteryBettingEnum.GROUP6_FIRST_THREE.getCode()));
        model.addAttribute("code", code);
        model.addAttribute("lotteryPlay",LotteryPlayEnum.GROUP_SIX.getCode());
        //玩法
        initPlayCode(model);
    }

    public String getBetInfo(String code, String betCode) {
        return JsonTool.toJson(getOdds(code, betCode));
    }
}
