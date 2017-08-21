package so.wwb.gamebox.lottery.hall.xy28.controller;

import org.soul.commons.collections.MapTool;
import org.soul.commons.data.json.JsonTool;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import so.wwb.gamebox.lottery.hall.controller.BaseLotteryController;
import so.wwb.gamebox.lottery.session.SessionManager;
import so.wwb.gamebox.model.company.lottery.po.LotteryResult;
import so.wwb.gamebox.model.company.lottery.po.SiteLotteryOdd;
import so.wwb.gamebox.model.enums.lottery.LotteryPlayEnum;
import so.wwb.gamebox.model.enums.lottery.LotteryTypeEnum;
import so.wwb.gamebox.web.cache.Cache;

import java.util.HashMap;
import java.util.Map;

/**
 * 幸运２８
 * Created by tom on 17-8-14.
 */
@Controller
@RequestMapping("/xy28")
public class BaseXy28Controller extends BaseLotteryController {
    /*大彩种*/
    static final String TYPE = LotteryTypeEnum.XY28.getCode();

    static final String INDEX_URL = "/hall/xy28/%s/Index";


    // 获取期数
    @RequestMapping("/getExpect")
    @ResponseBody
    public Map<String, Object> getExpect(String code) {
        Map<String, Object> map = new HashMap<>(4,1f);
        LotteryResult handicap = getHandicap(code);
        setHandicap(map, handicap);
        return map;
    }

    // pk10最近5条开彩记录
    @RequestMapping("/getRecent5Records")
    @ResponseBody
    public String getRecent5Records(String code) {
        return JsonTool.toJson(getOpenHistory(code));
    }

    /**
     * pk10最近20条开彩记录
     *
     * @param code
     * @return
     */
    @RequestMapping("/getRecent30Records")
    @ResponseBody
    public String getRecent30Records(String code) {
        return JsonTool.toJson(getOpenHistory(code, 30, true));
    }


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

        model.addAttribute("xy28Sum3BigSmall", LotteryPlayEnum.XY28_SUM3_BIG_SMALL.getCode());
        model.addAttribute("xy28Sum3Colour", LotteryPlayEnum.XY28_SUM3_COLOUR.getCode());
        model.addAttribute("xy28Sum3SingleDouble", LotteryPlayEnum.XY28_SUM3_SINGLE_DOUBLE.getCode());
        model.addAttribute("xy28Sum3Half", LotteryPlayEnum.XY28_SUM3_HALF.getCode());
        model.addAttribute("xy28ThreeSame", LotteryPlayEnum.XY28_THREE_SAME.getCode());
        model.addAttribute("xy28Sum3Extreme", LotteryPlayEnum.XY28_SUM3_EXTREME.getCode());
        model.addAttribute("xy28Sum3Digital", LotteryPlayEnum.XY28_SUM3_DIGITAL.getCode());
        model.addAttribute("xy28Sum3DigitalThree", LotteryPlayEnum.XY28_SUM3_DIGITAL_THREE.getCode());
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
