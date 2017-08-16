package so.wwb.gamebox.lottery.hall.qt.controller;

import org.soul.commons.lang.string.StringTool;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import so.wwb.gamebox.lottery.hall.ssc.controller.BaseSscController;
import so.wwb.gamebox.model.enums.lottery.LotteryBettingEnum;
import so.wwb.gamebox.model.enums.lottery.LotteryEnum;

import javax.servlet.http.HttpServletRequest;

/**
 * 福彩3D
 * Created by marz on 17-8-14.
 */
@Controller
@RequestMapping("/qt/fc3d")
public class Fc3dQtController extends BaseQtController {
    private static final String CODE = LotteryEnum.FC3D.getCode();

    @RequestMapping("/index")
    public String index(Model model) {
        index(model, TYPE, CODE);
        return String.format(INDEX_URL, CODE);
    }

    // 定位
    @RequestMapping("/fix")
    public String fix(Model model) {
        return super.fix(model, CODE);
    }

    /**
     * 获取赔率
     *
     * @return
     */
    @RequestMapping("/getOdds")
    public String getOdds(Model model,String betCode) {
        return super.getOddsByBetCode(model,CODE,betCode);
    }



//    // 一字定位
//    @RequestMapping("/oneWordFix")
//    public String oneWordFix(Model model) {
//        return super.oneWordFix(model, CODE);
//    }
//
//    // 二字定位
//    @RequestMapping("/twoWordFix")
//    public String twoWordFix(Model model) {
//        return twoWordFix(model, CODE);
//    }
//
//    // 三字定位
//    @RequestMapping("/threeWordFix")
//    public String threeWordFix(Model model) {
//        return threeWordFix(model, CODE);
//    }
//






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



    // 一字组合
    @RequestMapping("/oneWordComb")
    public String oneWordComb(Model model) {
        return oneWordComb(model, CODE);
    }

    // 二字和数
    @RequestMapping("/twoWordSum")
    public String twoWordSum(Model model) {
        return twoWordSum(model, CODE);
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
