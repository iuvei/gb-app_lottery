package so.wwb.gamebox.lottery.hall.pk10.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import so.wwb.gamebox.model.enums.lottery.LotteryEnum;

import javax.servlet.http.HttpServletRequest;

/**
 *  幸运飞艇
 * Created by tom on 17-8-9.
 */
@Controller
@RequestMapping("/pk10/xyft")
public class XyftController extends BasePk10Controller {

    private static final String CODE = LotteryEnum.XYFT.getCode();

    @RequestMapping("/index")
    public String index(Model model) {
        index(model, TYPE, CODE);
        return String.format(INDEX_URL, CODE);
    }

    // 双面玩法
    @RequestMapping("/twoSide")
    public String twoSide(Model model) {
        initData(model, CODE);
        return TWO_SIDE_URL;
    }



    // 排名（冠军 -> 第十名）
    @RequestMapping("/ranking")
    public String ranking( Model model) {
        initData(model, CODE);
        return String.format(RANKING_URL, CODE);
    }

    // 冠亚和
    @RequestMapping("/sum")
    public String sum(Model model) {
        initData(model, CODE);
        return String.format(SUM_URL, CODE);
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
