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
import so.wwb.gamebox.web.common.token.Token;

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

    @RequestMapping("/index")
    @Token(generate=true)
    public String index(Model model) {
        index(model, TYPE, CODE);
        return String.format(INDEX_URL, CODE);
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
        return String.format(SPECIAL_CODE_URL, CODE);
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
        return String.format(NORMAL_CODE_URL, CODE);
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
        model.addAttribute("mantissaBigSmall", LotteryPlayEnum.POSITIVE_MANTISSA_BIG_SMALL.getCode());
        return String.format(NORMAL_SPECIAL_CODE_URL, CODE);
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
        return String.format(NORMAL_1_TO_6_URL, CODE);
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
        return String.format(HALF_WAVE_URL, CODE);
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
        return String.format(ONE_ZODIAC_URL, CODE);
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
        return String.format(SPECIAL_ZODIAC_URL, CODE);
    }

    // 连码
    @RequestMapping("/linkCode")
    public String linkCode(Model model) {
        model.addAttribute("lhcFourAllIn", LotteryPlayEnum.LHC_FOUR_ALL_IN.getCode());
        model.addAttribute("lhcThreeAllIn", LotteryPlayEnum.LHC_THREE_ALL_IN.getCode());
        model.addAttribute("lhcThreeInTwo", LotteryPlayEnum.LHC_THREE_IN_TWO.getCode());
        model.addAttribute("lhcTwoAllIn", LotteryPlayEnum.LHC_TWO_ALL_IN.getCode());
        model.addAttribute("lhcTwoInSpecial", LotteryPlayEnum.LHC_TWO_IN_SPECIAL.getCode());
        model.addAttribute("lhcSpecialStrand", LotteryPlayEnum.LHC_SPECIAL_STRAND.getCode());
        return String.format(LINK_CODE_URL, CODE);
    }

    // 合肖
    @RequestMapping("/sumZodiac")
    public String lhcSumZodiac(Model model) {
        model.addAttribute("lhcSumZodiac", LotteryPlayEnum.LHC_SUM_ZODIAC.getCode());
        model.addAttribute("zodiacNum", this.getZodiacNumMap());
        return String.format(SUM_ZODIAC_URL, CODE);
    }

    // 连肖
    @RequestMapping("/linkZodiac")
    public String linkZodiac(Model model) {
        model.addAttribute("lhcTwoZodiacLink", LotteryPlayEnum.LHC_TWO_ZODIAC_LINK.getCode());
        model.addAttribute("lhcThreeZodiacLink", LotteryPlayEnum.LHC_THREE_ZODIAC_LINK.getCode());
        model.addAttribute("lhcFourZodiacLink", LotteryPlayEnum.LHC_FOUR_ZODIAC_LINK.getCode());
        model.addAttribute("lhcFiveZodiacLink", LotteryPlayEnum.LHC_FIVE_ZODIAC_LINK.getCode());
        model.addAttribute("zodiacNum", this.getZodiacNumMap());
        return String.format(LINK_ZODIAC_URL, CODE);
    }

    // 尾数连
    @RequestMapping("/linkMantissa")
    public String lhcLinkMantissa(Model model) {
        model.addAttribute("lhcTwoMantissaLink", LotteryPlayEnum.LHC_TWO_MANTISSA_LINK.getCode());
        model.addAttribute("lhcThreeMantissaLink", LotteryPlayEnum.LHC_THREE_MANTISSA_LINK.getCode());
        model.addAttribute("lhcFourMantissaLink", LotteryPlayEnum.LHC_FOUR_MANTISSA_LINK.getCode());
        model.addAttribute("lhcFiveMantissaLink", LotteryPlayEnum.LHC_FIVE_MANTISSA_LINK.getCode());
        return String.format(LINK_MANTISSA_URL, CODE);
    }

    // 全不中
    @RequestMapping("/allNoIn")
    public String allNoIn(Model model) {
        model.addAttribute("lhcFiveNoIn", LotteryPlayEnum.LHC_FIVE_NO_IN.getCode());
        model.addAttribute("lhcSixNoIn", LotteryPlayEnum.LHC_SIX_NO_IN.getCode());
        model.addAttribute("lhcSevenNoIn", LotteryPlayEnum.LHC_SEVEN_NO_IN.getCode());
        model.addAttribute("lhcEightNoIn", LotteryPlayEnum.LHC_EIGHT_NO_IN.getCode());
        model.addAttribute("lhcNineNoIn", LotteryPlayEnum.LHC_NINE_NO_IN.getCode());
        model.addAttribute("lhcTenNoIn", LotteryPlayEnum.LHC_TEN_NO_IN.getCode());
        model.addAttribute("lhcElevenNoIn", LotteryPlayEnum.LHC_ELEVEN_NO_IN.getCode());
        model.addAttribute("lhcTwelveNoIn", LotteryPlayEnum.LHC_TWELVE_NO_IN.getCode());
        return String.format(ALL_NO_IN_URL, CODE);
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
    @Token(valid=true)
    public String saveBetOrder(HttpServletRequest request, String betForm) {
        return super.saveBetOrder(request, CODE, betForm);
    }

}
