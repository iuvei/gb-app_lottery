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


    //三同号通选
    @RequestMapping("/sthtx")
    public String sthtx(Model model) {
        return sthtxInit(model, CODE);
    }

    //三同号单选
    @RequestMapping("/sthdx")
    public String sthdx(Model model) {
        return sthdxInit(model, CODE);
    }

    //二同号复选
    @RequestMapping("/ethfx")
    public String ethfx(Model model) {
        return ethfxInit(model, CODE);
    }

    //二同号单选
    @RequestMapping("/ethdx")
    public String ethdx(Model model) {
        return ethdxInit(model, CODE);
    }

    //三不同号
    @RequestMapping("/sbth")
    public String sbth(Model model) {
        return sbthInit(model, CODE);
    }

    //二不同号
    @RequestMapping("/ebth")
    public String ebth(Model model) {
        return ebthInit(model, CODE);
    }

    //三连号通选
    @RequestMapping("/slhtx")
    public String slhtx(Model model) {
        return slhtxInit(model, CODE);
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
