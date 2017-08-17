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
 * 其他系列基础controller
 * Created by tom on 17-8-11.
 * Modified by marz on 17-8-16
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
    static final String ONE_WORD_FIX = "/hall/qt/include/fix/OneWordFix";

    /**
     * 二字定位列表
     */
    static final String TWO_WORD_FIX = "/hall/qt/include/fix/TwoWordFix";

    /**
     * 三字定位列表
     */
    static final String THREE_WORD_FIX = "/hall/qt/include/fix/ThreeWordFix";


    /**
     * 组合
     */
    static final String COMB_URL = "/hall/qt/include/Comb";

    /**
     * 一字组合列表
     */
    static final String ONE_WORD_COMB = "/hall/qt/include/comb/OneWordComb";

    /**
     * 二字组合列表
     */
    static final String TWO_WORD_COMB = "/hall/qt/include/comb/TwoWordComb";

    /**
     * 三字组合列表
     */
    static final String THREE_WORD_COMB = "/hall/qt/include/comb/ThreeWordComb";

    /**
     * 组三
     */
    static final String GROUP3_URL = "/hall/qt/include/Group3";

    /**
     * 组三列表
     */
    static final String GROUP3_LIST_URL = "/hall/qt/include/group/Group3List";

    /**
     * 组六
     */
    static final String GROUP6_URL = "/hall/qt/include/Group6";

    /**
     * 组六列表
     */
    static final String GROUP6_LIST_URL = "/hall/qt/include/group/Group6List";

    /**
     * 跨度列表
     */
    static final String SPAN_URL = "/hall/qt/include/Span";

    /**
     * 跨度列表
     */
    static final String SPAN_LIST_URL = "/hall/qt/include/span/SpanList";

    // 定位
    public String fix(Model model, String code) {
        initPage(model, code);
        return FIX_URL;
    }

    // 组三
    public String group3(Model model, String code) {
        initPage(model, code);
        return GROUP3_URL;
    }

    // 组六
    public String group6(Model model, String code) {
        initPage(model, code);
        return GROUP6_URL;
    }

    // 跨度
    public String span(Model model, String code) {
        initPage(model, code);
        return SPAN_URL;
    }

    /**
     * 页面实例化
     *
     * @param model
     * @param code
     */
    public void initPage(Model model, String code) {
        //彩种
        model.addAttribute("code",code);
        //玩法
        initPlayCode(model);
    }

    /**
     * 根据betCode获取定位赔率列表
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
            }//一字组合
            case "comb_one":{
                url = ONE_WORD_COMB;
                initOneWordComb(model,code);
                break;
            }//二字组合
            case "comb_two":{
                url = TWO_WORD_COMB;
                initTwoWordComb(model,code);
                break;
            }//三字组合
            case "comb_three":{
                url = THREE_WORD_COMB;
                initThreeWordComb(model,code);
                break;
            }//组三
            case "pl3_group3":{
                url = GROUP3_LIST_URL;
                initBetData(model,code,betCode);
                break;
            }//组六
            case "pl3_group6":{
                url = GROUP6_LIST_URL;
                initBetData(model,code,betCode);
                break;
            }//跨度
            case "pl3_span":{
                url = SPAN_LIST_URL;
                initBetData(model,code,betCode);
                break;
            }
        }
        return url;
    }


    /**
     * 根据betCode初始化赔率数据
     *
     * @param model
     * @param code
     */
    public void initBetData(Model model, String code, String betCode) {
        Map<String, SiteLotteryOdd> siteLotteryOdds = getSiteLotteryOdds(code);
        //赔率
        Map<String, SiteLotteryOdd> odds = getOdds(betCode, siteLotteryOdds);
        model.addAttribute("odds", odds);
    }

    /**
     * 初始化一字组合数据
     *
     * @param model
     * @param code
     */
    public void initOneWordComb(Model model, String code) {
        Map<String, SiteLotteryOdd> siteLotteryOdds = getSiteLotteryOdds(code);
        //赔率
        model.addAttribute("odds", getOdds(LotteryBettingEnum.PL3_ONE_ALL_THREE.getCode(), siteLotteryOdds));
    }

    /**
     * 初始化二字组合数据
     *
     * @param model
     * @param code
     */
    public void initTwoWordComb(Model model, String code) {
        Map<String, SiteLotteryOdd> siteLotteryOdds = getSiteLotteryOdds(code);
        //赔率
        Map<String, SiteLotteryOdd> odds = getOdds(LotteryBettingEnum.PL3_TWO_SAME.getCode(), siteLotteryOdds);
        odds.putAll(getOdds(LotteryBettingEnum.PL3_TWO_DIFFERENT.getCode(), siteLotteryOdds));
        model.addAttribute("odds", odds);
    }

    /**
     * 初始化三字组合数据
     *
     * @param model
     * @param code
     */
    public void initThreeWordComb(Model model, String code) {
        Map<String, SiteLotteryOdd> siteLotteryOdds = getSiteLotteryOdds(code);
        //赔率
        Map<String, SiteLotteryOdd> odds = getOdds(LotteryBettingEnum.PL3_THREE_SAME.getCode(), siteLotteryOdds);
        odds.putAll(getOdds(LotteryBettingEnum.PL3_THREE_GROUP3.getCode(), siteLotteryOdds));
        odds.putAll(getOdds(LotteryBettingEnum.PL3_THREE_GROUP6.getCode(), siteLotteryOdds));
        model.addAttribute("odds", odds);
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
        model.addAttribute("title", LotteryBettingEnum.getTransByCode(betCode));
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

    // 组合
    public String comb(Model model, String code) {
        initPage(model, code);
        return COMB_URL;
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
}
