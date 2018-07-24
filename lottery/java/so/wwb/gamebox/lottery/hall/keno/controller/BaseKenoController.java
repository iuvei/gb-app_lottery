package so.wwb.gamebox.lottery.hall.keno.controller;

import org.soul.commons.collections.MapTool;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import so.wwb.gamebox.lottery.hall.controller.BaseLotteryController;
import so.wwb.gamebox.lottery.session.SessionManager;
import so.wwb.gamebox.model.company.lottery.po.SiteLotteryOdd;
import so.wwb.gamebox.model.enums.lottery.LotteryPlayEnum;
import so.wwb.gamebox.model.enums.lottery.LotteryTypeEnum;
import so.wwb.gamebox.common.cache.Cache;

import java.util.HashMap;
import java.util.Map;

/**
 * ｋｅｎo
 * Created by tom on 17-8-14.
 */
@Controller
@RequestMapping("/keno")
public class BaseKenoController extends BaseLotteryController {
    /*大彩种*/
    static final String TYPE = LotteryTypeEnum.KENO.getCode();

    static final String INDEX_URL = "/hall/keno/%s/Index";

    /**
     * 初始化彩种玩法
     */
    private void initPlayCode(Model model) {
        model.addAttribute("kenoSelectionOne", LotteryPlayEnum.KENO_SELECTION_ONE.getCode());
        model.addAttribute("kenoSelectionTwo", LotteryPlayEnum.KENO_SELECTION_TWO.getCode());
        model.addAttribute("kenoSelectionThree", LotteryPlayEnum.KENO_SELECTION_THREE.getCode());
        model.addAttribute("kenoSelectionFour", LotteryPlayEnum.KENO_SELECTION_FOUR.getCode());
        model.addAttribute("kenoSelectionFive", LotteryPlayEnum.KENO_SELECTION_FIVE.getCode());
        model.addAttribute("kenoSum20BigSmall", LotteryPlayEnum.KENO_SUM20_BIG_SMALL.getCode());
        model.addAttribute("kenoSum20SingleDouble", LotteryPlayEnum.KENO_SUM20_SINGLE_DOUBLE.getCode());
        model.addAttribute("kenoSum20FiveElements", LotteryPlayEnum.KENO_SUM20_FIVE_ELEMENTS.getCode());
        model.addAttribute("kenoUpDown", LotteryPlayEnum.KENO_UP_DOWN.getCode());
        model.addAttribute("kenoOddEven", LotteryPlayEnum.KENO_ODD_EVEN.getCode());
    }

    private void initOdd(Model model, String code) {
        Map<String, SiteLotteryOdd> oddMap = Cache.getSiteLotteryOdds(SessionManager.getSiteId(), code);
        if (MapTool.isEmpty(oddMap)) {
            return;
        }
        Map<String, Map<String, SiteLotteryOdd>> map = new HashMap<>();
        for (SiteLotteryOdd odd : oddMap.values()) {
            if (map.get(odd.getBetCode()) == null) {
                map.put(odd.getBetCode(), new HashMap<String, SiteLotteryOdd>());
            }
            map.get(odd.getBetCode()).put(odd.getBetNum(), odd);
        }
        model.addAttribute("oddMap", map);
    }

    public void initData(Model model, String code) {
        initPlayCode(model);
        initOdd(model, code);
    }

}
