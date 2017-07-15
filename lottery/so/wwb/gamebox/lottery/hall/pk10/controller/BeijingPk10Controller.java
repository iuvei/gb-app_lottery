package so.wwb.gamebox.lottery.hall.pk10.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import so.wwb.gamebox.model.enums.lottery.LotteryBettingEnum;
import so.wwb.gamebox.model.enums.lottery.LotteryEnum;
import so.wwb.gamebox.model.enums.lottery.LotteryPlayEnum;

import javax.servlet.http.HttpServletRequest;

/**
 * 北京PK10
 * Created by fei on 17-4-5.
 */
@Controller
@RequestMapping("/pk10/bjpk10")
public class BeijingPk10Controller extends BasePk10Controller {

    private static final String CODE = LotteryEnum.BJPK10.getCode();

    @RequestMapping("/index")
    public String index(Model model) {
        index(model, TYPE, CODE);
        return String.format(INDEX_URL, CODE);
    }

    // 双面玩法
    @RequestMapping("/twoSide")
    public String twoSide(Model model) {
        initData(model, CODE);
        return String.format(TWO_SIDE_URL, CODE);
    }

    // 数字盘
    @RequestMapping("/digit")
    public String digit(Model model) {
        initData(model, CODE);
        return String.format(DIGIT_URL, CODE);
    }

    // 排名（冠军 -> 第十名）
    @RequestMapping("/ranking/{ranking}")
    public String ranking(@PathVariable String ranking, Model model) {
        model.addAttribute("ranking", ranking);
       // model.addAttribute("rankName", getRankName(ranking));
        model.addAttribute("odds", getOdds(CODE, ranking));
        model.addAttribute("pk10Digital", LotteryPlayEnum.PK10_DIGITAL.getCode());
        return String.format(RANKING_URL, CODE);
    }

    // 冠亚和
    @RequestMapping("/sum")
    public String sum(Model model) {
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
