package so.wwb.gamebox.lottery.hall.pl3.controller;

import org.soul.commons.collections.MapTool;
import org.soul.commons.data.json.JsonTool;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import so.wwb.gamebox.lottery.hall.controller.BaseLotteryController;
import so.wwb.gamebox.model.company.lottery.po.SiteLotteryOdd;
import so.wwb.gamebox.model.enums.lottery.LotteryBettingEnum;
import so.wwb.gamebox.model.enums.lottery.LotteryPlayEnum;
import so.wwb.gamebox.model.enums.lottery.LotteryTypeEnum;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Pl3基础controller
 * Created by tom on 17-8-11.
 * Modified by marz on 17-8-16
 */
@Controller
@RequestMapping("/pl3")
public class BasePl3Controller extends BaseLotteryController {
    /*大彩种*/
    static final String TYPE = LotteryTypeEnum.PL3.getCode();

    static final String INDEX_URL = "/hall/pl3/%s/Index";

    /**
     * 定位
     */
    static final String FIX_URL = "/hall/pl3/include/Fix";


    /**
     * 一字定位列表
     */
    static final String ONE_WORD_FIX = "/hall/pl3/include/fix/OneWordFix";

    /**
     * 二字定位列表
     */
    static final String TWO_WORD_FIX = "/hall/pl3/include/fix/TwoWordFix";

    /**
     * 三字定位列表
     */
    static final String THREE_WORD_FIX = "/hall/pl3/include/fix/ThreeWordFix";


    /**
     * 组合
     */
    static final String COMB_URL = "/hall/pl3/include/Comb";

    /**
     * 一字组合列表
     */
    static final String ONE_WORD_COMB = "/hall/pl3/include/comb/OneWordComb";

    /**
     * 二字组合列表
     */
    static final String TWO_WORD_COMB = "/hall/pl3/include/comb/TwoWordComb";

    /**
     * 三字组合列表
     */
    static final String THREE_WORD_COMB = "/hall/pl3/include/comb/ThreeWordComb";

    /**
     * 组三
     */
    static final String GROUP3_URL = "/hall/pl3/include/Group3";

    /**
     * 组三列表
     */
    static final String GROUP3_LIST_URL = "/hall/pl3/include/group/Group3List";

    /**
     * 组六
     */
    static final String GROUP6_URL = "/hall/pl3/include/Group6";

    /**
     * 组六列表
     */
    static final String GROUP6_LIST_URL = "/hall/pl3/include/group/Group6List";

    /**
     * 跨度
     */
    static final String SPAN_URL = "/hall/pl3/include/Span";

    /**
     * 跨度列表
     */
    static final String SPAN_LIST_URL = "/hall/pl3/include/span/SpanList";

    /**
     * 和数
     */
    static final String SUM_URL = "/hall/pl3/include/Sum";

    /**
     * 二数和数列表
     */
    static final String TWO_WORD_SUM = "/hall/pl3/include/sum/TwoWordSum";

    /**
     * 三数和数列表
     */
    static final String THREE_WORD_SUM = "/hall/pl3/include/sum/ThreeWordSum";

    /**
     * 三星
     */
    static final String THREE_STAR = "/hall/pl3/include/ThreeStar";

    /**
     * 后二
     */
    static final String AFTER_TWO = "/hall/pl3/include/AfterTwo";

    /**
     * 不定位
     */
    static final String BU_DING_WEI = "/hall/pl3/include/BuDingWei";

    /**
     * 定位胆
     */
    static final String DING_WEI_DAN = "/hall/pl3/include/DingWeiDan";

    /**
     * 前二
     */
    static final String FIRST_TWO = "/hall/pl3/include/FirstTwo";


    // 三星
    public String threeStar(Model model, String code) {
        initPage(model, code);
        return THREE_STAR;
    }

    // 后二
    public String afterTwo(Model model, String code) {
        initPage(model, code);
        return AFTER_TWO;
    }

    // 不定位
    public String buDingWei(Model model, String code) {
        initPage(model, code);
        return BU_DING_WEI;
    }

    // 定位胆
    public String dingWeiDan(Model model, String code) {
        initPage(model, code);
        return DING_WEI_DAN;
    }

    // 前二
    public String firstTwo(Model model, String code) {
        initPage(model, code);
        return FIRST_TWO;
    }



    /**
     * 获取时时彩官方玩法的奖金,返点数据
     * @param code
     * @return
     */
    @RequestMapping("/getGfwfAllOdd")
    @ResponseBody
    public List<Map<String, SiteLotteryOdd>> getGfwfOdd(String code) {

        Map<String, SiteLotteryOdd> siteLotteryOdds = getSiteLotteryOdds(code);
        List<Map<String, SiteLotteryOdd>> oddList = new ArrayList<>();

        oddList.add(getOdds(LotteryBettingEnum.PL3_SANXING_ZXDS.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.PL3_SANXING_ZXFS.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.PL3_SANXING_ZXHZ.getCode(), siteLotteryOdds));

        oddList.add(getOdds(LotteryBettingEnum.PL3_SANXING_Z3FS.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.PL3_SANXING_Z3DS.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.PL3_SANXING_Z6FS.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.PL3_SANXING_Z6DS.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.PL3_SANXING_HHZX.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.PL3_SANXING_ZUXHZ.getCode(), siteLotteryOdds));

        oddList.add(getOdds(LotteryBettingEnum.PL3_ERXING_QEZXFS.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.PL3_ERXING_QEZXDS.getCode(), siteLotteryOdds));

        oddList.add(getOdds(LotteryBettingEnum.PL3_ERXING_QEZUXFS.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.PL3_ERXING_QEZUXDS.getCode(), siteLotteryOdds));

        oddList.add(getOdds(LotteryBettingEnum.PL3_ERXING_HEZXFS.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.PL3_ERXING_HEZXDS.getCode(), siteLotteryOdds));

        oddList.add(getOdds(LotteryBettingEnum.PL3_ERXING_HEZUXFS.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.PL3_ERXING_HEZUXDS.getCode(), siteLotteryOdds));

        oddList.add(getOdds(LotteryBettingEnum.PL3_YIXING_DWD.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.PL3_BUDINGWEI_SXYM.getCode(), siteLotteryOdds));

        return oddList;
    }
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

    // 和数
    public String sum(Model model, String code) {
        initPage(model, code);
        return SUM_URL;
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
            }//百十和数
            case "pl3_hundred_ten_sum":
                //百个和数
            case "pl3_hundred_one_sum":
                //十个和数
            case "pl3_ten_one_sum":{
                url = TWO_WORD_SUM;
                initSumData(model,code,betCode);
                break;
            }//百十个和数
            case "pl3_hundred_ten_one_sum":{
                url = THREE_WORD_SUM;
                initSumData(model,code,betCode);
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
        Map<String, SiteLotteryOdd> oddMap = getOdds(betCode, siteLotteryOdds);
        if(MapTool.isNotEmpty(oddMap)){
            SiteLotteryOdd lottery = oddMap.values().iterator().next();
            model.addAttribute("lottery", lottery);
        }
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
        Map<String, SiteLotteryOdd> oddMap = getOdds(betCode, siteLotteryOdds);
        if(MapTool.isNotEmpty(oddMap)){
            SiteLotteryOdd lottery = oddMap.values().iterator().next();
            model.addAttribute("lottery", lottery);
        }
    }

    // 组合
    public String comb(Model model, String code) {
        initPage(model, code);
        return COMB_URL;
    }

    /**
     * 根据betCode初始化和数数据
     *
     * @param model
     * @param code
     */
    public void initSumData(Model model, String code, String betCode) {
        Map<String, SiteLotteryOdd> siteLotteryOdds = getSiteLotteryOdds(code);
        //赔率
        model.addAttribute("odds", getOdds(betCode, siteLotteryOdds));
        model.addAttribute("title",LotteryBettingEnum.getTransByCode(betCode));
    }

    /**
     * 根据code获取最近20条开彩记录
     *
     * @param code
     * @return
     */
    @RequestMapping("/getRecent30Records")
    @ResponseBody
    public String getRecent30Records(String code) {
        return JsonTool.toJson(getOpenedHistory(code, 30));
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
        model.addAttribute("pl3ThreeCombination", LotteryPlayEnum.PL3_THREE_COMBINATION.getCode());
        model.addAttribute("pl3Sum2Digital", LotteryPlayEnum.PL3_SUM2_DIGITAL.getCode());
        model.addAttribute("pl3Sum2SingleDouble", LotteryPlayEnum.PL3_SUM2_SINGLE_DOUBLE.getCode());
        model.addAttribute("pl3Sum2Mantissa", LotteryPlayEnum.PL3_SUM2_MANTISSA.getCode());
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
