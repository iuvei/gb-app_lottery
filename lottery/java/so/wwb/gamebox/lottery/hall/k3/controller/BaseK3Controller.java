package so.wwb.gamebox.lottery.hall.k3.controller;

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
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 快3
 * Created by fei on 17-4-6.
 */
@Controller
@RequestMapping("/k3")
public class BaseK3Controller extends BaseLotteryController {
    public static String TYPE = LotteryTypeEnum.K3.getCode();

    static final String INDEX_URL = "/hall/k3/%s/Index";
    /**
     * 点数
     */
    static final String POINTS_URL = "/hall/k3/include/Points";
    /**
     * 三军
     */
    static final String ARMED_FORCES_URL = "/hall/k3/include/ArmedForces";
    /**
     * 围骰/全骰
     */
    static final String DICE_URL = "/hall/k3/include/Dice";
    /**
     * 长牌
     */
    static final String LONG_CARD_URL = "/hall/k3/include/LongCard";
    /**
     * 短牌
     */
    static final String SHORT_CARD_URL = "/hall/k3/include/ShortCard";
    /**
     * 三同号通选
     */
    static final String STHTX_URL = "/hall/k3/include/Sthtx";
    /**
     * 三同号单选
     */
    static final String STHDX_URL = "/hall/k3/include/Sthdx";
    /**
     * 二同号复选
     */
    static final String ETHFX_URL = "/hall/k3/include/Ethfx";
    /**
     * 二同号单选
     */
    static final String ETHDX_URL = "/hall/k3/include/Ethdx";
    /**
     * 三不同号
     */
    static final String SBTH_URL = "/hall/k3/include/Sbth";
    /**
     * 二不同号
     */
    static final String EBTH_URL = "/hall/k3/include/Ebth";
    /**
     * 三连号通选
     */
    static final String SLHTX_URL = "/hall/k3/include/Slhtx";

    /**
     * 点数
     *
     * @param code
     * @param model
     * @return
     */
    public String points(String code, Model model) {
        //赔率
        model.addAttribute("odds", getOdds(code, LotteryBettingEnum.POINTS.getCode()));
        //玩法
        model.addAttribute("pointsBigSmall", LotteryPlayEnum.POINTS_BIG_SMALL.getCode());
        model.addAttribute("pointsSingleDouble", LotteryPlayEnum.POINTS_SINGLE_DOUBLE.getCode());
        Map<String, String> pointsPlay = new HashMap<>(14,1f);
        pointsPlay.put("4", LotteryPlayEnum.POINTS_417.getCode());
        pointsPlay.put("17", LotteryPlayEnum.POINTS_417.getCode());
        pointsPlay.put("5", LotteryPlayEnum.POINTS_516.getCode());
        pointsPlay.put("16", LotteryPlayEnum.POINTS_516.getCode());
        pointsPlay.put("6", LotteryPlayEnum.POINTS_615.getCode());
        pointsPlay.put("15", LotteryPlayEnum.POINTS_615.getCode());
        pointsPlay.put("7", LotteryPlayEnum.POINTS_714.getCode());
        pointsPlay.put("14", LotteryPlayEnum.POINTS_714.getCode());
        pointsPlay.put("8", LotteryPlayEnum.POINTS_813.getCode());
        pointsPlay.put("13", LotteryPlayEnum.POINTS_813.getCode());
        pointsPlay.put("9", LotteryPlayEnum.POINTS_912.getCode());
        pointsPlay.put("12", LotteryPlayEnum.POINTS_912.getCode());
        pointsPlay.put("10", LotteryPlayEnum.POINTS_1011.getCode());
        pointsPlay.put("11", LotteryPlayEnum.POINTS_1011.getCode());
        model.addAttribute("pointsPlay", pointsPlay);
        return POINTS_URL;
    }

    /**
     * 三军
     *
     * @param code
     * @param model
     * @return
     */
    public String armedForces(String code, Model model) {
        //赔率
        model.addAttribute("odds", getOdds(code, LotteryBettingEnum.ARMED_FORCES.getCode()));
        //玩法
        model.addAttribute("armedForces", LotteryPlayEnum.ARMED_FORCES.getCode());
        return ARMED_FORCES_URL;
    }

    /**
     * 围骰/全骰
     *
     * @param code
     * @param model
     * @return
     */
    public String dice(String code, Model model) {
        //赔率
        model.addAttribute("odds", getOdds(code, LotteryBettingEnum.DICE_FULL_DICE.getCode()));
        //玩法
        model.addAttribute("dice", LotteryPlayEnum.DICE.getCode());
        model.addAttribute("fullDice", LotteryPlayEnum.FULL_DICE.getCode());
        return DICE_URL;
    }

    /**
     * 长牌
     *
     * @param code
     * @param model
     * @return
     */
    public String longCard(String code, Model model) {
        //赔率
        model.addAttribute("odds", getOdds(code, LotteryBettingEnum.LONG_CARD.getCode()));
        //玩法
        model.addAttribute("longCard", LotteryPlayEnum.LONG_CARD.getCode());
        return LONG_CARD_URL;
    }

    /**
     * 短牌
     */
    public String shortCard(String code, Model model) {
        //赔率
        model.addAttribute("odds", getOdds(code, LotteryBettingEnum.SHORT_CARD.getCode()));
        //玩法
        model.addAttribute("shortCard", LotteryPlayEnum.SHORT_CARD.getCode());
        return SHORT_CARD_URL;
    }

    //三同号通选
    public  String sthtxInit(Model model, String code) {

        return  STHTX_URL;
    }

    //三同号单选
    public  String sthdxInit(Model model, String code) {

        return  STHDX_URL;
    }

    //二同号复选
    public  String ethfxInit(Model model, String code) {

        return  ETHFX_URL;
    }


    //二同号单选
    public  String ethdxInit(Model model, String code) {

        return  ETHDX_URL;
    }


    //三不同号
    public  String sbthInit(Model model, String code) {

        return  SBTH_URL;
    }

    //二不同号
    public  String ebthInit(Model model, String code) {

        return  EBTH_URL;
    }

    //三连号通选
    public  String slhtxInit(Model model, String code) {

        return  SLHTX_URL;
    }



    @RequestMapping("/getGfwfAllOdd")
    @ResponseBody
    public List<Map<String, SiteLotteryOdd>> getGfwfOdd(String code) {
        Map<String, SiteLotteryOdd> siteLotteryOdds = getSiteLotteryOdds(code);
        List<Map<String, SiteLotteryOdd>> oddList = new ArrayList<>();
        oddList.add(getOdds(LotteryBettingEnum.K3_DANXUAN_ERTONG.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.K3_FUXUAN_ERTONG.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.K3_DANXUAN_SANTONG.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.K3_FUXUAN_SANTONG.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.K3_TONGXUAN_SANLIAN.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.K3_ERBUTONG.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.K3_SANBUTONG.getCode(), siteLotteryOdds));

        return oddList;
    }



}
