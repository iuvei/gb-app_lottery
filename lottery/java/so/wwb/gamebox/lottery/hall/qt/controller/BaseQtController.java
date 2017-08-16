package so.wwb.gamebox.lottery.hall.qt.controller;

import org.soul.commons.data.json.JsonTool;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import so.wwb.gamebox.lottery.hall.controller.BaseLotteryController;
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
 * 其他系列
 * Created by marz on 17-8-14.
 */
@Controller
@RequestMapping("/qt")
public class BaseQtController extends BaseLotteryController {
    /*大彩种*/
    static final String TYPE = LotteryTypeEnum.QT.getCode();

    static final String INDEX_URL = "/hall/qt/%s/Index";


    /**
     * 定位
     */
    static final String FIX_URL = "/hall/qt/include/Fix";

    /**
     * 一字定位列表
     */
    static final String ONE_WORD_FIX = "/hall/qt/include/OneWordFix";

    /**
     * 二字定位列表
     */
    static final String TWO_WORD_FIX = "/hall/qt/include/TwoWordFix";


    /**
     * 三字定位列表
     */
    static final String THREE_WORD_FIX = "/hall/qt/include/ThreeWordFix";

    // 定位
    public String fix(Model model, String code) {
        initFix(model, code);
        return FIX_URL;
    }

    /**
     * 定位
     *
     * @param model
     * @param code
     */
    public void initFix(Model model, String code) {
        //彩种
        model.addAttribute("code",code);
        //玩法
        initPlayCode(model);
    }

    /**
     * 根据betCode获取赔率列表
     * @param model
     * @param code
     * @param betCode
     * @return
     */
    public String getOddsByBetCode(Model model,String code,String betCode) {
        String url = "";
        //玩法
        initPlayCode(model);
        switch (betCode){
            //百定位
            case "pl3_hundred":
            //十定位
            case "pl3_ten":
            //个定位
            case "pl3_one":{
                url = ONE_WORD_FIX;
                initOneWordFix(model,code,betCode);
                break;
            }//百十定位
            case "pl3_hundred_ten":
                //百个定位
            case "pl3_hundred_one":
                //十个定位
            case "pl3_ten_one":{
                url = TWO_WORD_FIX;
                initTwoWordFix(model,code,betCode);
                break;
            }//百十个定位
            case "pl3_hundred_ten_one":{
                url = THREE_WORD_FIX;
                initThreeWordFix(model,code,betCode);
                break;
            }
        }
        return url;
    }

    /**
     * 初始化一字定位数据
     *
     * @param model
     * @param code
     */
    public void initOneWordFix(Model model, String code, String betCode) {
        Map<String, SiteLotteryOdd> siteLotteryOdds = getSiteLotteryOdds(code);
        //赔率
        model.addAttribute("odds", getOdds(betCode, siteLotteryOdds));
        model.addAttribute("title",LotteryBettingEnum.getTransByCode(betCode));
    }

    /**
     * 初始化二字定位数据
     *
     * @param model
     * @param code
     */
    public void initTwoWordFix(Model model, String code, String betCode) {
        Map<String, SiteLotteryOdd> siteLotteryOdds = getSiteLotteryOdds(code);
        //赔率
        model.addAttribute("odds", getOdds(betCode, siteLotteryOdds));
        List<String> places = new ArrayList<>();
        if(LotteryBettingEnum.PL3_HUNDRED_TEN.getCode().equals(betCode)){
            places.add("百");
            places.add("十");
        }else if(LotteryBettingEnum.PL3_HUNDRED_ONE.getCode().equals(betCode)){
            places.add("百");
            places.add("个");
        }else if(LotteryBettingEnum.PL3_TEN_ONE.getCode().equals(betCode)){
            places.add("十");
            places.add("个");
        }
        model.addAttribute("places", places);
        model.addAttribute("title",LotteryBettingEnum.getTransByCode(betCode).replace("定位",""));
    }

    /**
     * 初始化三字定位数据
     *
     * @param model
     * @param code
     */
    public void initThreeWordFix(Model model, String code, String betCode) {
        Map<String, SiteLotteryOdd> siteLotteryOdds = getSiteLotteryOdds(code);
        //赔率
        model.addAttribute("odds", getOdds(betCode, siteLotteryOdds));
        List<String> places = new ArrayList<>();
        places.add("百");
        places.add("十");
        places.add("个");
        model.addAttribute("places", places);
        model.addAttribute("title",LotteryBettingEnum.getTransByCode(betCode).replace("定位",""));
    }





    /**
     * 双面
     */
    static final String TWO_SIDE_URL = "/hall/qt/include/TwoSide";
    /**
     * 数字盘
     */
    static final String DIGIT_URL = "/hall/qt/include/Digit";



    /**
     * 一字定位
     */
    static final String ONE_WORD_FIX_URL = "/hall/qt/include/OneWordFix";
    /**
     * 二字定位
     */
    static final String TWO_WORD_FIX_URL = "/hall/qt/include/TwoWordFix";
    /**
     * 三字定位
     */
    static final String THREE_WORD_FIX_URL = "/hall/qt/include/ThreeWordFix";
    /**
     * 一字组合
     */
    static final String ONE_WORD_COMB_URL = "/hall/qt/include/OneWordComb";
    /**
     * 二字和数
     */
    static final String TWO_WORD_SUM_URL = "/hall/qt/include/TwoWordSum";
    /**
     * 跨度
     */
    static final String SPAN_URL = "/hall/qt/include/Span";
    /**
     * 龙虎
     */
    static final String DRAGONTIGER_URL = "/hall/qt/include/DragonTiger";



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
//    public String oneWordFix(Model model, String code) {
//        initOneWordFix(model, code);
//        return ONE_WORD_FIX_URL;
//    }


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
        model.addAttribute("pl3OneDigital", LotteryPlayEnum.PL3_ONE_DIGITAL.getCode());
        model.addAttribute("pl3OneBigSmall", LotteryPlayEnum.PL3_ONE_BIG_SMALL.getCode());
        model.addAttribute("pl3OneSingleDouble", LotteryPlayEnum.PL3_ONE_SINGLE_DOUBLE.getCode());
        model.addAttribute("pl3OnePrimeCombined", LotteryPlayEnum.PL3_ONE_PRIME_COMBINED.getCode());
        model.addAttribute("pl3TwoDigital", LotteryPlayEnum.PL3_TWO_DIGITAL.getCode());
        model.addAttribute("pl3ThreeDigital", LotteryPlayEnum.PL3_THREE_DIGITAL.getCode());
        model.addAttribute("pl3OneCombination", LotteryPlayEnum.PL3_ONE_COMBINATION.getCode());
        model.addAttribute("pl3TwoCombination", LotteryPlayEnum.PL3_TWO_COMBINATION.getCode());
        model.addAttribute("pl3ThreeCombination", LotteryPlayEnum.PL3_TWO_COMBINATION.getCode());
        model.addAttribute("pl3ThreeCombination", LotteryPlayEnum.PL3_THREE_COMBINATION.getCode());
        model.addAttribute("pl3Sum2Digital", LotteryPlayEnum.PL3_SUM2_DIGITAL.getCode());
        model.addAttribute("pl3Sum2MantissaBigSmall", LotteryPlayEnum.PL3_SUM2_MANTISSA_BIG_SMALL.getCode());
        model.addAttribute("pl3Sum2MantissaPrimeCombined", LotteryPlayEnum.PL3_SUM2_MANTISSA_PRIME_COMBINED.getCode());
        model.addAttribute("pl3Sum3Digital", LotteryPlayEnum.PL3_SUM3_DIGITAL.getCode());
        model.addAttribute("pl3Sum3Mantissa", LotteryPlayEnum.PL3_SUM3_MANTISSA.getCode());
        model.addAttribute("pl3Sum3BigSmall", LotteryPlayEnum.PL3_SUM3_BIG_SMALL.getCode());
        model.addAttribute("pl3Sum3SingleDouble", LotteryPlayEnum.PL3_SUM3_SINGLE_DOUBLE.getCode());
        model.addAttribute("pl3Sum3MantissaBigSmall", LotteryPlayEnum.PL3_SUM3_MANTISSA_BIG_SMALL.getCode());
        model.addAttribute("pl3Sum3MantissaPrimeCombined", LotteryPlayEnum.PL3_SUM3_MANTISSA_PRIME_COMBINED.getCode());
        model.addAttribute("pl3GroupThree", LotteryPlayEnum.PL3_GROUP_THREE.getCode());
        model.addAttribute("pl3GroupSix", LotteryPlayEnum.PL3_GROUP_SIX.getCode());
        model.addAttribute("pl3Span", LotteryPlayEnum.PL3_SPAN.getCode());
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

    public String getBetInfo(String code, String betCode) {
        return JsonTool.toJson(getOdds(code, betCode));
    }
}
