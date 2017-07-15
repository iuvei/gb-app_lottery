package so.wwb.gamebox.lottery.hall.k3.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import so.wwb.gamebox.model.enums.lottery.LotteryEnum;

import javax.servlet.http.HttpServletRequest;

/**
 * 江苏快3
 * Created by fei on 17-4-6.
 */
@Controller
@RequestMapping("/k3/jsk3")
public class JiangsuK3Controller extends BaseK3Controller {
    private static final String CODE = LotteryEnum.JSK3.getCode();

    @RequestMapping("/index")
    public String index(Model model) {
        index(model, TYPE, CODE);
        return String.format(INDEX_URL, CODE);
    }

    /**
     * 点数
     *
     * @param model
     * @return
     */
    @RequestMapping("/points")
    public String points(Model model) {
        return super.points(CODE, model);
    }

    /**
     * 三军
     *
     * @param model
     * @return
     */
    @RequestMapping("/armedForces")
    public String armedForces(Model model) {
        return super.armedForces(CODE, model);
    }

    /**
     * 围骰/全骰
     *
     * @param model
     * @return
     */
    @RequestMapping("/dice")
    public String dice(Model model) {
        return super.dice(CODE, model);
    }

    /**
     * 长牌
     *
     * @param model
     * @return
     */
    @RequestMapping("/longCard")
    public String longCard(Model model) {
        return super.longCard(CODE, model);
    }

    /**
     * 短牌
     *
     * @param model
     * @return
     */
    @RequestMapping("/shortCard")
    public String shortCard(Model model) {
        return super.shortCard(CODE, model);
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
