package so.wwb.gamebox.lottery.hall.ssc.controller;

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
    /**
     * 五星
     */
    static final String FIVESTAR_URL = "/hall/ssc/include/FiveStar";
    /**
     * 四星
     */
    static final String FOURSTAR_URL = "/hall/ssc/include/FourStar";
    /**
     * 后三
     */
    static final String AFTERTHREE_URL = "/hall/ssc/include/AfterThree";
    /**
     * 前三
     */
    static final String FIRSTTHREE_URL = "/hall/ssc/include/FirstThree";
    /**
     * 前二
     */
    static final String FIVETWO_URL = "/hall/ssc/include/FirstTwo";

    // 双面玩法
    public String twoSide(Model model, String code) {
        model.addAttribute("code", code);
        initPlayCode(model);
        return TWO_SIDE_URL;
    }

    // 数字盘
    public String digit(Model model, String code) {
        model.addAttribute("code", code);
        initPlayCode(model);
        return DIGIT_URL;
    }

    // 一字定位
    public String oneWordFix(Model model, String code) {
        model.addAttribute("code", code);
        initPlayCode(model);
        return ONE_WORD_FIX_URL;
    }


    // 二字定位
    public String twoWordFix(Model model, String code) {
        model.addAttribute("code", code);
        initPlayCode(model);
        return TWO_WORD_FIX_URL;
    }

    // 三字定位
    public String threeWordFix(Model model, String code) {
        model.addAttribute("code", code);
        initPlayCode(model);
        return THREE_WORD_FIX_URL;
    }

    // 二字和数
    public String twoWordSum(Model model, String code) {
        initTwoWordSum(model, code);
        return TWO_WORD_SUM_URL;
    }

    // 一字组合
    public String oneWordComb(Model model, String code) {
        model.addAttribute("code", code);
        initPlayCode(model);
        return ONE_WORD_COMB_URL;
    }

    // 跨度
    public String span(Model model, String code) {
        model.addAttribute("code", code);
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
    public  String fiveStarInit(Model model, String code) {

        return  FIVESTAR_URL;
    }
    public  String fourStarInit(Model model, String code) {

        return  FOURSTAR_URL;
    }
    public  String afterThreeInit(Model model, String code) {

        return  AFTERTHREE_URL;
    }
    public  String firstThreeInit(Model model, String code) {

        return  FIRSTTHREE_URL;
    }
    public  String firstTwoInit(Model model, String code) {

        return  FIVETWO_URL;
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
        model.addAttribute("dragonTiger", LotteryPlayEnum.DRAGON_TIGER_TIE.getCode());
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
        oddList.add(getOdds(LotteryBettingEnum.SSC_WAN_THOUSAND.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.SSC_WAN_HUNDRED.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.SSC_WAN_TEN.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.SSC_WAN_ONE.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.SSC_THOUSAND_HUNDRED.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.SSC_THOUSAND_TEN.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.SSC_THOUSAND_ONE.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.SSC_HUNDRED_TEN.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.SSC_HUNDRED_ONE.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.SSC_TEN_ONE.getCode(), siteLotteryOdds));
        model.addAttribute("lotteryPlay",LotteryPlayEnum.DRAGON_TIGER_TIE.getCode());
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
        oddList.add(getOdds(LotteryBettingEnum.SSC_WAN_THOUSAND.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.SSC_WAN_HUNDRED.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.SSC_WAN_TEN.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.SSC_WAN_ONE.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.SSC_THOUSAND_HUNDRED.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.SSC_THOUSAND_TEN.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.SSC_THOUSAND_ONE.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.SSC_HUNDRED_TEN.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.SSC_HUNDRED_ONE.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.SSC_TEN_ONE.getCode(), siteLotteryOdds));
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
    /**
     * 获取龙虎相关赔率信息
     *
     * @param code
     * @return
     */
    @RequestMapping("/getDragonTigerOdds")
    @ResponseBody
    public ArrayList<Map<String, SiteLotteryOdd>> getDragonTigerOdds(String code) {
        //赔率
        Map<String, SiteLotteryOdd> siteLotteryOdds = getSiteLotteryOdds(code);
        ArrayList<Map<String, SiteLotteryOdd>> listmap = new ArrayList<Map<String, SiteLotteryOdd>>(10);
        listmap.add(getOdds(LotteryBettingEnum.SSC_WAN_THOUSAND.getCode(), siteLotteryOdds));
        listmap.add(getOdds(LotteryBettingEnum.SSC_WAN_HUNDRED.getCode(), siteLotteryOdds));
        listmap.add(getOdds(LotteryBettingEnum.SSC_WAN_TEN.getCode(), siteLotteryOdds));
        listmap.add(getOdds(LotteryBettingEnum.SSC_WAN_ONE.getCode(), siteLotteryOdds));
        listmap.add(getOdds(LotteryBettingEnum.SSC_THOUSAND_HUNDRED.getCode(), siteLotteryOdds));
        listmap.add(getOdds(LotteryBettingEnum.SSC_THOUSAND_TEN.getCode(), siteLotteryOdds));
        listmap.add(getOdds(LotteryBettingEnum.SSC_THOUSAND_ONE.getCode(), siteLotteryOdds));
        listmap.add(getOdds(LotteryBettingEnum.SSC_HUNDRED_TEN.getCode(), siteLotteryOdds));
        listmap.add(getOdds(LotteryBettingEnum.SSC_HUNDRED_ONE.getCode(), siteLotteryOdds));
        listmap.add(getOdds(LotteryBettingEnum.SSC_TEN_ONE.getCode(), siteLotteryOdds));
        return listmap;
    }

    /**
     * 获取一字定位赔率
     * @param code
     * @param betCode
     * @return
     */
    @RequestMapping("/getOneWordFixOdd")
    @ResponseBody
    public String getOneWordFixOdd(String code, String betCode) {
        Map<String, SiteLotteryOdd> odds = getOdds(code, betCode);
        Map<String, SiteLotteryOdd> fsumodd = getOdds(code, LotteryBettingEnum.FIVE_SUM.getCode());
        odds.putAll(fsumodd);
        return JsonTool.toJson(odds);
    }
    /**
     * 获取数字盘赔率
     * @param code
     * @return
     */
    @RequestMapping("/getDigitOdd")
    @ResponseBody
    public List<Map<String, SiteLotteryOdd>> getDigitOdd(String code) {
        Map<String, SiteLotteryOdd> siteLotteryOdds = getSiteLotteryOdds(code);
        List<Map<String, SiteLotteryOdd>> oddList = new ArrayList<>();
        oddList.add(getOdds(LotteryBettingEnum.TEN_THOUSAND.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.THOUSAND.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.HUNDRED.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.TEN.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.ONE.getCode(), siteLotteryOdds));
        return oddList;
    }
    /**
     * 获取双面赔率
     * @param code
     * @return
     */
    @RequestMapping("/getTwoSideOdd")
    @ResponseBody
    public List<Map<String, SiteLotteryOdd>> getTwoSideOdd(String code) {
        Map<String, SiteLotteryOdd> siteLotteryOdds = getSiteLotteryOdds(code);
        List<Map<String, SiteLotteryOdd>> oddList = new ArrayList<>();
        oddList.add(getOdds(LotteryBettingEnum.TEN_THOUSAND.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.THOUSAND.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.HUNDRED.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.TEN.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.ONE.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.FIVE_SUM.getCode(), siteLotteryOdds));
        return oddList;
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
        oddList.add(getOdds(LotteryBettingEnum.SSC_WUXING_ZXFS.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.SSC_WUXING_ZXDS.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.SSC_SIXING_ZXFS.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.SSC_SIXING_ZXDS.getCode(), siteLotteryOdds));

        oddList.add(getOdds(LotteryBettingEnum.SSC_SANXING_QSZXFS.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.SSC_SANXING_QSZXDS.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.SSC_SANXING_QSZXZH.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.SSC_SANXING_QSZXHZ.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.SSC_SANXING_QSZXKD.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.SSC_SANXING_QSZ3FS.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.SSC_SANXING_QSZ3DS.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.SSC_SANXING_QSZ6FS.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.SSC_SANXING_QSZ6DS.getCode(), siteLotteryOdds));

        oddList.add(getOdds(LotteryBettingEnum.SSC_SANXING_QSHHZX.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.SSC_SANXING_QSZUXHZ.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.SSC_SANXING_QSZXBD.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.SSC_SANXING_QSHZWS.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.SSC_SANXING_QSTS.getCode(), siteLotteryOdds));

        oddList.add(getOdds(LotteryBettingEnum.SSC_SANXING_HSZXFS.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.SSC_SANXING_HSZXDS.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.SSC_SANXING_HSZXZH.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.SSC_SANXING_HSZXHZ.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.SSC_SANXING_HSZXKD.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.SSC_SANXING_HSZ3FS.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.SSC_SANXING_HSZ3DS.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.SSC_SANXING_HSZ6FS.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.SSC_SANXING_HSZ6DS.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.SSC_SANXING_HSHHZX.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.SSC_SANXING_HSZUXHZ.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.SSC_SANXING_HSZXBD.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.SSC_SANXING_HSHZWS.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.SSC_SANXING_HSTS.getCode(), siteLotteryOdds));

        oddList.add(getOdds(LotteryBettingEnum.SSC_ERXING_QEZXFS.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.SSC_ERXING_QEZXDS.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.SSC_ERXING_QEZXHZ.getCode(), siteLotteryOdds));

        oddList.add(getOdds(LotteryBettingEnum.SSC_ERXING_QEZUXFS.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.SSC_ERXING_QEZUXDS.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.SSC_ERXING_QEZUXHZ.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.SSC_ERXING_QEZUXBD.getCode(), siteLotteryOdds));

        oddList.add(getOdds(LotteryBettingEnum.SSC_YIXING_DWD.getCode(), siteLotteryOdds));

        oddList.add(getOdds(LotteryBettingEnum.SSC_BUDINGWEI_WXSM.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.SSC_BUDINGWEI_WXEM.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.SSC_BUDINGWEI_Q4EM.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.SSC_BUDINGWEI_Q4YM.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.SSC_BUDINGWEI_H4EM.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.SSC_BUDINGWEI_H4YM.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.SSC_BUDINGWEI_Q3EM.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.SSC_BUDINGWEI_Q3YM.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.SSC_BUDINGWEI_H4EM.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.SSC_BUDINGWEI_H3EM.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.SSC_BUDINGWEI_H3YM.getCode(), siteLotteryOdds));

        oddList.add(getOdds(LotteryBettingEnum.SSC_DAXIAODANSHUANG_Q3.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.SSC_DAXIAODANSHUANG_H3.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.SSC_DAXIAODANSHUANG_Q2.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.SSC_DAXIAODANSHUANG_H2.getCode(), siteLotteryOdds));
        return oddList;
    }
    public String getBetInfo(String code, String betCode) {
        return JsonTool.toJson(getOdds(code, betCode));
    }
}
