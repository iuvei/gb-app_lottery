package so.wwb.gamebox.lottery.hall.lhc.controller;

import org.soul.commons.data.json.JsonTool;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import so.wwb.gamebox.model.company.lottery.po.SiteLotteryOdd;
import so.wwb.gamebox.model.enums.lottery.LotteryBettingEnum;
import so.wwb.gamebox.model.enums.lottery.LotteryEnum;
import so.wwb.gamebox.model.enums.lottery.LotteryPlayEnum;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * 香港六合彩
 * Created by fei on 17-4-5.
 */
@Controller
@RequestMapping("/lhc/hklhc")
public class HKlhcController extends BaseLhcController {
    /*小彩种－香港六合彩*/
    private static final String CODE = LotteryEnum.HKLHC.getCode();

    private static final String PATH = "hklhc";

    @RequestMapping("/index")
    public String index(Model model) {
        index(model, TYPE, CODE);
        return String.format(INDEX_URL, PATH);
    }

    // 特码
    @RequestMapping("/specialCode")
    public String specialCode(Model model) {
        model.addAttribute("odds", getOdds(CODE, LotteryBettingEnum.SPECIAL.getCode()));
        model.addAttribute("digitalPlay", LotteryPlayEnum.SPECIAL_DIGITAL.getCode());
        model.addAttribute("bigSmallPlay", LotteryPlayEnum.SPECIAL_BIG_SMALL.getCode());
        model.addAttribute("singleDoublePlay", LotteryPlayEnum.SPECIAL_SINGLE_DOUBLE.getCode());
        model.addAttribute("sumSingleDoublePlay", LotteryPlayEnum.SPECIAL_SUM_SINGLE_DOUBLE.getCode());
        model.addAttribute("specialSumBigSmallPlay", LotteryPlayEnum.SPECIAL_SUM_BIG_SMALL.getCode());
        model.addAttribute("colourPlay", LotteryPlayEnum.SPECIAL_COLOUR.getCode());
        model.addAttribute("specialHalfPlay", LotteryPlayEnum.SPECIAL_HALF.getCode());
        model.addAttribute("mantissaBigSmallPlay", LotteryPlayEnum.SPECIAL_MANTISSA_BIG_SMALL.getCode());
        model.addAttribute("zodiacNum", this.getZodiacNumMap());
        return String.format(SPECIAL_CODE_URL, PATH);
    }

    // 正码
    @RequestMapping("/normalCode")
    public String normalCode(Model model) {
        //正码赔率
        Map<String, SiteLotteryOdd> siteLotteryOdds = getSiteLotteryOdds(CODE);
        model.addAttribute("odds", getOdds(LotteryBettingEnum.POSITIVE.getCode(), siteLotteryOdds));
        //总和赔率
        model.addAttribute("sumOdds", getOdds(LotteryBettingEnum.SEVEN_SUM.getCode(), siteLotteryOdds));
        model.addAttribute("digitalPlay", LotteryPlayEnum.POSITIVE_DIGITAL.getCode());
        model.addAttribute("sumSingleDoublePlay", LotteryPlayEnum.SEVEN_SUM_SINGLE_DOUBLE.getCode());
        model.addAttribute("sumBigSmallPlay", LotteryPlayEnum.SEVEN_SUM_BIG_SMALL.getCode());
        model.addAttribute("zodiacNum", this.getZodiacNumMap());
        return String.format(NORMAL_CODE_URL, PATH);
    }

    // 正特码
    @RequestMapping("/normalSpecialCode")
    public String normalSpecialCode(Model model) {
        model.addAttribute("digitalPlay", LotteryPlayEnum.POSITIVE_SPECIAL_DIGITAL.getCode());
        model.addAttribute("bigSmallPlay", LotteryPlayEnum.POSITIVE_BIG_SMALL.getCode());
        model.addAttribute("singleDoublePlay", LotteryPlayEnum.POSITIVE_SINGLE_DOUBLE.getCode());
        model.addAttribute("colourPlay", LotteryPlayEnum.POSITIVE_COLOUR.getCode());
        model.addAttribute("sumBigSmallPlay", LotteryPlayEnum.POSITIVE_SUM_BIG_SMALL.getCode());
        model.addAttribute("sumSingleDoublePlay", LotteryPlayEnum.POSITIVE_SUM_SINGLE_DOUBLE.getCode());
        return String.format(NORMAL_SPECIAL_CODE_URL, PATH);
    }

    @RequestMapping("/getLhcBet")
    @ResponseBody
    public String getLhcBet(String subCode) {
        Map<String, SiteLotteryOdd> siteLotteryOdds = getSiteLotteryOdds(CODE);
        Map<String, SiteLotteryOdd> odds = getOdds(subCode, siteLotteryOdds);
        return JsonTool.toJson(odds);
    }

    // 正码1-6
    @RequestMapping("/normal1To6")
    public String normal1To6(Model model) {
        //正码一至六赔率
        List<Map<String, SiteLotteryOdd>> oddList = new ArrayList<>();
        Map<String, SiteLotteryOdd> siteLotteryOdds = getSiteLotteryOdds(CODE);
        oddList.add(getOdds(LotteryBettingEnum.POSITIVE_FIRST.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.POSITIVE_SECOND.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.POSITIVE_THIRD.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.POSITIVE_FOURTH.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.POSITIVE_FIFTH.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.POSITIVE_SIXTH.getCode(), siteLotteryOdds));
        model.addAttribute("oddList", oddList);
        //玩法
        model.addAttribute("bigSmallPlay", LotteryPlayEnum.POSITIVE_BIG_SMALL.getCode());
        model.addAttribute("singleDoublePlay", LotteryPlayEnum.POSITIVE_SINGLE_DOUBLE.getCode());
        model.addAttribute("colourPlay", LotteryPlayEnum.POSITIVE_COLOUR.getCode());
        model.addAttribute("sumBigSmallPlay", LotteryPlayEnum.POSITIVE_SUM_BIG_SMALL.getCode());
        model.addAttribute("sumSingleDoublePlay", LotteryPlayEnum.POSITIVE_SUM_SINGLE_DOUBLE.getCode());
        model.addAttribute("mantissaBigSmall", LotteryPlayEnum.POSITIVE_MANTISSA_BIG_SMALL.getCode());
        return String.format(NORMAL_1_TO_6_URL, PATH);
    }

    // 连码
    @RequestMapping("/successiveCode")
    public String successiveCode(Model model) {
        return String.format(SUCCESSIVE_CODE_URL, PATH);
    }

    // 半波
    @RequestMapping("/halfWave")
    public String halfWave(Model model) {
        //正码赔率
        Map<String, SiteLotteryOdd> siteLotteryOdds = getSiteLotteryOdds(CODE);
        model.addAttribute("odds", getOdds(LotteryBettingEnum.LHC_HALF_COLOUR.getCode(), siteLotteryOdds));
        //玩法
        model.addAttribute("lhcHalfColourBigSmall", LotteryPlayEnum.LHC_HALF_COLOUR_BIG_SMALL.getCode());
        model.addAttribute("lhcHalfColourSingleDouble", LotteryPlayEnum.LHC_HALF_COLOUR_SINGLE_DOUBLE.getCode());
        return String.format(HALF_WAVE_URL, PATH);
    }

    // 一肖
    @RequestMapping("/oneZodiac")
    public String oneZodiac(Model model) {
        //赔率
        Map<String, SiteLotteryOdd> siteLotteryOdds = getSiteLotteryOdds(CODE);
        model.addAttribute("odds", getOdds(LotteryBettingEnum.LHC_ONE_ZODIAC.getCode(), siteLotteryOdds));
        //玩法
        model.addAttribute("lhcOneZodiac", LotteryPlayEnum.LHC_ONE_ZODIAC.getCode());

        //生肖对应号码列表
        model.addAttribute("zodiacNum", this.getZodiacNumMap());
        return String.format(ONE_ZODIAC_URL, PATH);
    }

    // 特肖
    @RequestMapping("/specialZodiac")
    public String specialZodiac(Model model) {
        //赔率
        Map<String, SiteLotteryOdd> siteLotteryOdds = getSiteLotteryOdds(CODE);
        model.addAttribute("odds", getOdds(LotteryBettingEnum.SPECIAL.getCode(), siteLotteryOdds));
        //玩法
        model.addAttribute("lhcSpecialZodiac", LotteryPlayEnum.LHC_SPECIAL_ZODIAC.getCode());

        //生肖对应号码列表
        model.addAttribute("zodiacNum", this.getZodiacNumMap());
        return String.format(SPECIAL_ZODIAC_URL, PATH);
    }

    // 合肖
    @RequestMapping("/shutZodiac")
    public String shutZodiac(Model model) {
        return String.format(SHUT_ZODIAC_URL, PATH);
    }

    // 连肖
    @RequestMapping("/successiveZodiac")
    public String successiveZodiac(Model model) {
        return String.format(SUCCESSIVE_ZODIAC_URL, PATH);
    }

    // 尾数连
    @RequestMapping("/mantissaSuccessive")
    public String mantissaSuccessive(Model model) {
        return String.format(MANTISSA_SUCCESSIVE_URL, PATH);
    }

    // 全不中
    @RequestMapping("/allNotIn")
    public String allNotIn(Model model) {
        return String.format(ALL_NOT_IN_URL, PATH);
    }

    /**
     * 下注
     *
     * @param request
     * @param betForm
     * @return
     */
    @RequestMapping("/saveBetOrder")
    @ResponseBody
    public String saveBetOrder(HttpServletRequest request, String betForm) {
        return super.saveBetOrder(request, CODE, betForm);
    }

}
