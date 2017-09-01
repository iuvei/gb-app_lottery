package so.wwb.gamebox.lottery.hall.keno.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import so.wwb.gamebox.model.enums.lottery.LotteryEnum;
import so.wwb.gamebox.model.enums.lottery.LotteryPlayEnum;

import javax.servlet.http.HttpServletRequest;

/**
 * 北京快乐８
 * Created by tom on 17-8-14.
 */
@Controller
@RequestMapping("/keno/bjkl8")
public class BeijingBjkl8Controller extends BaseKenoController {

    private static final String CODE = LotteryEnum.BJKL8.getCode();

    @RequestMapping("/index")
    public String index(Model model) {
        index(model, TYPE, CODE);
        return String.format(INDEX_URL, CODE);
    }

    // qt
    @RequestMapping("/qt")
    public String digit(Model model) {
        initData(model, CODE);
        return "/hall/keno/bjkl8/Qt";
    }

    // xj
    @RequestMapping("/x{len}")
    public String ranking(@PathVariable String len, Model model) {
        initData(model, CODE);
        return "/hall/keno/bjkl8/X" + len;
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
