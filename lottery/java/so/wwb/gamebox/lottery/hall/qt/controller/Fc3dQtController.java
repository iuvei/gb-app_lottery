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

    // 组合
    @RequestMapping("/comb")
    public String comb(Model model) {
        return super.comb(model, CODE);
    }

    // 组三
    @RequestMapping("/group3")
    public String group3(Model model) {
        return super.group3(model, CODE);
    }

    // 组六
    @RequestMapping("/group6")
    public String group6(Model model) {
        return super.group6(model, CODE);
    }

    // 跨度
    @RequestMapping("/span")
    public String span(Model model) {
        return super.span(model, CODE);
    }

    // 和数
    @RequestMapping("/sum")
    public String sum(Model model) {
        return super.sum(model, CODE);
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
