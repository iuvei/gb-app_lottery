package so.wwb.gamebox.lottery.hall.ssc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import so.wwb.gamebox.model.enums.lottery.LotteryEnum;

import javax.servlet.http.HttpServletRequest;

/**
 * 分分时时彩
 * Created by devin on 17-8-19.
 */
@Controller
@RequestMapping("/ssc/ffssc")
public class FenFenSscController extends BaseSscController {

    private static final String CODE = LotteryEnum.FFSSC.getCode();

    @RequestMapping("/index")
    public String index(Model model) {
        index(model, TYPE, CODE);
        return String.format(INDEX_URL, CODE);
    }

    // 双面玩法
    @RequestMapping("/twoSide")
    public String twoSide(Model model) {
        return super.twoSide(model, CODE);
    }

    // 数字盘
    @RequestMapping("/digit")
    public String digit(Model model) {
        return super.digit(model, CODE);
    }

    // 一字定位
    @RequestMapping("/oneWordFix")
    public String oneWordFix(Model model, String betCode) {
        return super.oneWordFix(model, CODE);
    }

    /**
     * 获取一字定位更换玩法后更换相应赔率
     *
     * @param betCode
     * @return
     */
    @RequestMapping("/getBetInfo")
    @ResponseBody
    public String getBetInfo(String betCode) {
        return super.getBetInfo(CODE, betCode);
    }

    // 二字定位
    @RequestMapping("/twoWordFix")
    public String twoWordFix(Model model) {
        return twoWordFix(model, CODE);
    }

    // 三字定位
    @RequestMapping("/threeWordFix")
    public String threeWordFix(Model model) {
        return threeWordFix(model, CODE);
    }

    // 一字组合
    @RequestMapping("/oneWordComb")
    public String oneWordComb(Model model) {
        return oneWordComb(model, CODE);
    }

    // 跨度
    @RequestMapping("/span")
    public String span(Model model) {
        return span(model, CODE);
    }

    // 龙虎
    @RequestMapping("/dragonTiger")
    public String dragonTiger(Model model) {
        return dragontiger(model, CODE);
    }

    //组选三
    @RequestMapping("/groupThree")
    public String groupThree(Model model) {
        return groupThreeInit(model, CODE);
    }
    //组选六
    @RequestMapping("/groupSix")
    public String groupSix(Model model) {
        return groupSixInit(model, CODE);
    }
    //五星
    @RequestMapping("/fiveStar")
    public String fiveStar(Model model) {
        return fiveStarInit(model, CODE);
    }
    //四星
    @RequestMapping("/fourStar")
    public String fourStar(Model model) {
        return fourStarInit(model, CODE);
    }
    //后三
    @RequestMapping("/afterThree")
    public String afterThree(Model model) {
        return afterThreeInit(model, CODE);
    }
    //前三
    @RequestMapping("/firstThree")
    public String firstThree(Model model) {
        return firstThreeInit(model, CODE);
    }
    //前二
    @RequestMapping("/firstTwo")
    public String firstTwo(Model model) {
        return firstTwoInit(model, CODE);
    }
    //定位胆
    @RequestMapping("/dingWeiDan")
    public String dingWeiDan(Model model) {
        return dingWeiDanInit(model, CODE);
    }
    //不定位
    @RequestMapping("/buDingWei")
    public String buDingWei(Model model) {
        return buDingWeiInit(model, CODE);
    }
    //大小单双
    @RequestMapping("/bigSmall")
    public String bigSmall(Model model) {
        return bigSmallInit(model, CODE);
    }
    //任选二
    @RequestMapping("/optionalTwo")
    public String optionalTwo(Model model) {
        return optionalTwoInit(model, CODE);
    }
    //任选三
    @RequestMapping("/optionalThree")
    public String optionalThree(Model model) {
        return optionalThreeInit(model, CODE);
    }
    //任选四
    @RequestMapping("/optionalFour")
    public String optionalFour(Model model) {
        return optionalFourInit(model, CODE);
    }
    /**

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
