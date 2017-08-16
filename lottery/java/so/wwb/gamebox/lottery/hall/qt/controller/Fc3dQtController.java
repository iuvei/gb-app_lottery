package so.wwb.gamebox.lottery.hall.qt.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
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


//    // 一字组合
//    @RequestMapping("/oneWordComb")
//    public String oneWordComb(Model model) {
//        return oneWordComb(model, CODE);
//    }
//
//    // 二字和数
//    @RequestMapping("/twoWordSum")
//    public String twoWordSum(Model model) {
//        return twoWordSum(model, CODE);
//    }

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
