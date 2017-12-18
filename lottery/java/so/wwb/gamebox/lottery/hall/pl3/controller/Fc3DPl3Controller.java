package so.wwb.gamebox.lottery.hall.pl3.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import so.wwb.gamebox.model.company.lottery.po.SiteLotteryOdd;
import so.wwb.gamebox.model.enums.lottery.LotteryBettingEnum;
import so.wwb.gamebox.model.enums.lottery.LotteryEnum;
import so.wwb.gamebox.web.common.token.Token;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * 福彩3D
 * Created by marz on 17-8-14.
 */
@Controller
@RequestMapping("/pl3/fc3d")
public class Fc3DPl3Controller extends BasePl3Controller {
    private static final String CODE = LotteryEnum.FC3D.getCode();

    @RequestMapping("/index")
    @Token(generate=true)
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


    // 三星
    @RequestMapping("/threeStar")
    public String threeStar(Model model) {
        return super.threeStar(model, CODE);
    }

    // 后二
    @RequestMapping("/afterTwo")
    public String afterTwo(Model model) {
        return super.afterTwo(model, CODE);
    }


    // 不定位
    @RequestMapping("/buDingWei")
    public String buDingWei(Model model) {
        return super.buDingWei(model, CODE);
    }


    // 定位胆
    @RequestMapping("/dingWeiDan")
    public String dingWeiDan(Model model) {
        return super.dingWeiDan(model, CODE);
    }


    // 前二
    @RequestMapping("/firstTwo")
    public String firstTwo(Model model) {
        return super.firstTwo(model, CODE);
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
     * 获取相关赔率信息
     *
     * @param betCode
     * @return
     */
    @RequestMapping("/getBetOdds")
    @ResponseBody
    public Map<String, SiteLotteryOdd> getBetOdds(String betCode) {
        //赔率
        return getOdds(CODE, betCode);
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
