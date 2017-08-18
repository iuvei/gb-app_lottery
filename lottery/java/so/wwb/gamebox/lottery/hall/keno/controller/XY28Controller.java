package so.wwb.gamebox.lottery.hall.keno.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import so.wwb.gamebox.model.enums.lottery.LotteryEnum;

import javax.servlet.http.HttpServletRequest;

/**
 * 北京PK10
 * Created by fei on 17-4-5.
 */
@Controller
@RequestMapping("/xy28/xy28")
public class XY28Controller extends BaseKenoController {

    private static final String CODE = LotteryEnum.XY28.getCode();

    @RequestMapping("/index")
    public String index(Model model) {
        index(model, TYPE, CODE);
        return String.format(INDEX_URL, CODE);
    }

    // hh
    @RequestMapping("/hh")
    public String twoSide(Model model) {
        initData(model, CODE);
        return "/hall/keno/xy28/Hh";
    }

    // 数字盘
    @RequestMapping("/hz")
    public String digit(Model model) {
        initData(model, CODE);
        return "/hall/keno/xy28/Hz";
    }

    // 排名（冠军 -> 第十名）
    @RequestMapping("/tmb3")
    public String ranking(  Model model) {
        initData(model, CODE);
        return "/hall/keno/xy28/Tmb3";
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
