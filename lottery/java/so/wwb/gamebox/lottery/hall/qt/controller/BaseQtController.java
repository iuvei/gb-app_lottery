package so.wwb.gamebox.lottery.hall.qt.controller;

import org.soul.commons.collections.MapTool;
import org.soul.commons.data.json.JsonTool;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import so.wwb.gamebox.lottery.hall.controller.BaseLotteryController;
import so.wwb.gamebox.lottery.session.SessionManager;
import so.wwb.gamebox.model.company.lottery.po.LotteryResult;
import so.wwb.gamebox.model.company.lottery.po.SiteLotteryOdd;
import so.wwb.gamebox.model.enums.lottery.LotteryBettingEnum;
import so.wwb.gamebox.model.enums.lottery.LotteryPlayEnum;
import so.wwb.gamebox.model.enums.lottery.LotteryTypeEnum;
import so.wwb.gamebox.web.cache.Cache;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * qt
 * Created by tom on 17-8-11.
 */
@Controller
@RequestMapping("/qt")
public class BaseQtController extends BaseLotteryController {
    /*大彩种*/
    static final String TYPE = LotteryTypeEnum.QT.getCode();

    static final String INDEX_URL = "/hall/qt/%s/Index";
    /**
     * 双面
     */
    static final String TWO_SIDE_URL = "/hall/qt/%s/TwoSide";
    /**
     * 数字盘
     */
    static final String DIGIT_URL = "/hall/qt/%s/Digit";
    /**
     * 名次（冠军 -> 第十名）
     */
    static final String RANKING_URL = "/hall/qt/%s/Ranking";
    /**
     * 冠亚和
     */
    static final String SUM_URL = "/hall/qt/%s/Sum";




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
        model.addAttribute("xy28Sum3BigSmall", LotteryPlayEnum.XY28_SUM3_BIG_SMALL.getCode());
        model.addAttribute("xy28Sum3Colour", LotteryPlayEnum.XY28_SUM3_COLOUR.getCode());
        model.addAttribute("xy28Sum3SingleDouble", LotteryPlayEnum.XY28_SUM3_SINGLE_DOUBLE.getCode());
        model.addAttribute("xy28Sum3Half", LotteryPlayEnum.XY28_SUM3_HALF.getCode());
        model.addAttribute("xy28ThreeSame", LotteryPlayEnum.XY28_THREE_SAME.getCode());
        model.addAttribute("xy28Sum3Extreme", LotteryPlayEnum.XY28_SUM3_EXTREME.getCode());
        model.addAttribute("xy28Sum3Digital", LotteryPlayEnum.XY28_SUM3_DIGITAL.getCode());
        model.addAttribute("xy28Sum3DigitalThree", LotteryPlayEnum.XY28_SUM3_DIGITAL_THREE.getCode());

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
}
