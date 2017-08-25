package so.wwb.gamebox.lottery.hall.xy28.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import so.wwb.gamebox.model.enums.lottery.LotteryEnum;

import javax.servlet.http.HttpServletRequest;

/**
 * 幸运２８
 * Created by tom on 17-8-14.
 */
@Controller
@RequestMapping("/xy28/xy28")
public class XY28Controller extends BaseXy28Controller {

    private static final String CODE = LotteryEnum.XY28.getCode();

    @RequestMapping("/index")
    public String index(Model model) {
        index(model, TYPE, CODE);
        return String.format(INDEX_URL, CODE);
    }

    /**
     * 混合
     *
     * @param model
     * @return
     */
    @RequestMapping("/hh")
    public String twoSide(Model model) {
        initData(model, CODE);
        return "/hall/xy28/xy28/Hh";
    }

    /**
     * 和值特码
     *
     * @param model
     * @return
     */
    @RequestMapping("/hz")
    public String digit(Model model) {
        initData(model, CODE);
        return "/hall/xy28/xy28/Hz";
    }

    /**
     * 特码包3
     *
     * @param model
     * @return
     */
    @RequestMapping("/tmb3")
    public String ranking(Model model) {
        initData(model, CODE);
        return "/hall/xy28/xy28/Tmb3";
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
