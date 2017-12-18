package so.wwb.gamebox.lottery.hall.sfc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import so.wwb.gamebox.model.enums.lottery.LotteryEnum;
import so.wwb.gamebox.web.common.token.Token;

import javax.servlet.http.HttpServletRequest;

/**重庆幸运农场
 * Created by devin on 17-8-15.
 */
@Controller
@RequestMapping("/sfc/gdkl10")
public class Gdkl10SfcController extends BaseSfcController {
    private static final String CODE = LotteryEnum.GDKL10.getCode();

    @RequestMapping("/index")
    @Token(generate=true)
    public String index(Model model) {
        index(model, TYPE, CODE);
        return String.format(INDEX_URL, CODE);
    }

    // 双面玩法
    @RequestMapping("/twoSide")
    public String twoSide(Model model) {
        model.addAttribute("lotteryCode", CODE);
        return TWO_SIDE_URL;
    }
    // 龙虎
    @RequestMapping("/dragonTiger")
    public String dragonTiger(Model model) {
        return dragontiger(model, CODE);
    }
    // 第1-8球
    @RequestMapping("/ranking/{ranking}")
    public String firstBall(Model model,@PathVariable String ranking) {
        model.addAttribute("lotteryBetCode", ranking);
        return rankball(model, CODE);
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
