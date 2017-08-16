package so.wwb.gamebox.lottery.hall.sfc.controller;

import org.soul.commons.data.json.JsonTool;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import so.wwb.gamebox.lottery.hall.controller.BaseLotteryController;
import so.wwb.gamebox.model.company.lottery.po.LotteryResult;
import so.wwb.gamebox.model.company.lottery.po.SiteLotteryOdd;
import so.wwb.gamebox.model.enums.lottery.LotteryBettingEnum;
import so.wwb.gamebox.model.enums.lottery.LotteryPlayEnum;
import so.wwb.gamebox.model.enums.lottery.LotteryTypeEnum;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 十分彩
 * Created by fei on 17-4-3.
 */
@Controller
@RequestMapping("/sfc")
public class BaseSfcController extends BaseLotteryController {
    /*大彩种*/
    static final String TYPE = LotteryTypeEnum.SFC.getCode();

    static final String INDEX_URL = "/hall/sfc/%s/Index";
    /**
     * 双面
     */
    static final String TWO_SIDE_URL = "/hall/sfc/include/TwoSide";

    /**
     * 龙虎
     */
    static final String DRAGONTIGER_URL = "/hall/sfc/include/DragonTiger";
    /**
     * 第一球
     */
    static final String RANKBALLURL = "/hall/sfc/include/RankBall";





    // 龙虎
    public String dragontiger(Model model, String code) {
        Map<String, SiteLotteryOdd> siteLotteryOdds = getSiteLotteryOdds(code);
        initDragontiger(model, code, siteLotteryOdds);
//        //todo 要增加一个新的jsp来实现龙虎的页面展示,下面的url指定的jsp是旧的
        return DRAGONTIGER_URL;
    }
    // 第一球
    public String rankball(Model model, String code) {
        model.addAttribute("code", code);
        model.addAttribute("lotteryPlay",LotteryPlayEnum.SFC_DIGITAL.getCode());
        return RANKBALLURL;
    }

    // 获取期数
    @RequestMapping("/getExpect")
    @ResponseBody
    public Map<String, Object> getExpect(String code) {
        Map<String, Object> map = new HashMap<>(4,1f);
        LotteryResult handicap = getHandicap(code);
        setHandicap(map, handicap);
        return map;
    }


    // 时时彩最近5条开彩记录
    @RequestMapping("/getRecent5Records")
    @ResponseBody
    public String getRecent5Records(String code) {
        return JsonTool.toJson(getOpenHistory(code));
    }

    /**
     * 时时彩最近20条开彩记录
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

    }

    /**
     * 获取相关赔率信息
     *
     * @param code
     * @param betCode
     * @return
     */
    @RequestMapping("/getBetOdds")
    @ResponseBody
    public Map<String, SiteLotteryOdd> getBetOdds(String code, String betCode) {
        //赔率
        return getOdds(code, betCode);
    }




    /**
     * 初始化龙虎
     *
     * @param model
     * @param code
     */
    public void initDragontiger(Model model, String code,Map<String, SiteLotteryOdd> siteLotteryOdds) {
        //赔率
        List<Map<String, SiteLotteryOdd>> oddList = new ArrayList<>();
        model.addAttribute("lotteryPlay",LotteryPlayEnum.SFC_DRAGON_TIGER.getCode());
        model.addAttribute("oddList", oddList);
        model.addAttribute("code", code);
        //玩法
        initPlayCode(model);
    }


    /**
     * 获取龙虎相关赔率信息
     *
     * @param code
     * @return
     */
    @RequestMapping("/getDragonTigerOdds")
    @ResponseBody
    public ArrayList<Map<String, SiteLotteryOdd>> getDragonTigerOdds(String code) {
        //赔率
        Map<String, SiteLotteryOdd> siteLotteryOdds = getSiteLotteryOdds(code);
        ArrayList<Map<String, SiteLotteryOdd>> listmap = new ArrayList<Map<String, SiteLotteryOdd>>(9);
        listmap.add(getOdds(LotteryBettingEnum.SFC_DRAGON_TIGER_12.getCode(), siteLotteryOdds));
        listmap.add(getOdds(LotteryBettingEnum.SFC_DRAGON_TIGER_13.getCode(), siteLotteryOdds));
        listmap.add(getOdds(LotteryBettingEnum.SFC_DRAGON_TIGER_14.getCode(), siteLotteryOdds));
        listmap.add(getOdds(LotteryBettingEnum.SFC_DRAGON_TIGER_15.getCode(), siteLotteryOdds));
        listmap.add(getOdds(LotteryBettingEnum.SFC_DRAGON_TIGER_16.getCode(), siteLotteryOdds));
        listmap.add(getOdds(LotteryBettingEnum.SFC_DRAGON_TIGER_17.getCode(), siteLotteryOdds));
        listmap.add(getOdds(LotteryBettingEnum.SFC_DRAGON_TIGER_18.getCode(), siteLotteryOdds));
        listmap.add(getOdds(LotteryBettingEnum.SFC_DRAGON_TIGER_23.getCode(), siteLotteryOdds));
        listmap.add(getOdds(LotteryBettingEnum.SFC_DRAGON_TIGER_24.getCode(), siteLotteryOdds));
        listmap.add(getOdds(LotteryBettingEnum.SFC_DRAGON_TIGER_25.getCode(), siteLotteryOdds));
        listmap.add(getOdds(LotteryBettingEnum.SFC_DRAGON_TIGER_26.getCode(), siteLotteryOdds));
        listmap.add(getOdds(LotteryBettingEnum.SFC_DRAGON_TIGER_27.getCode(), siteLotteryOdds));
        listmap.add(getOdds(LotteryBettingEnum.SFC_DRAGON_TIGER_28.getCode(), siteLotteryOdds));
        listmap.add(getOdds(LotteryBettingEnum.SFC_DRAGON_TIGER_34.getCode(), siteLotteryOdds));
        listmap.add(getOdds(LotteryBettingEnum.SFC_DRAGON_TIGER_35.getCode(), siteLotteryOdds));
        listmap.add(getOdds(LotteryBettingEnum.SFC_DRAGON_TIGER_36.getCode(), siteLotteryOdds));
        listmap.add(getOdds(LotteryBettingEnum.SFC_DRAGON_TIGER_37.getCode(), siteLotteryOdds));
        listmap.add(getOdds(LotteryBettingEnum.SFC_DRAGON_TIGER_38.getCode(), siteLotteryOdds));
        listmap.add(getOdds(LotteryBettingEnum.SFC_DRAGON_TIGER_45.getCode(), siteLotteryOdds));
        listmap.add(getOdds(LotteryBettingEnum.SFC_DRAGON_TIGER_46.getCode(), siteLotteryOdds));
        listmap.add(getOdds(LotteryBettingEnum.SFC_DRAGON_TIGER_47.getCode(), siteLotteryOdds));
        listmap.add(getOdds(LotteryBettingEnum.SFC_DRAGON_TIGER_48.getCode(), siteLotteryOdds));
        listmap.add(getOdds(LotteryBettingEnum.SFC_DRAGON_TIGER_56.getCode(), siteLotteryOdds));
        listmap.add(getOdds(LotteryBettingEnum.SFC_DRAGON_TIGER_57.getCode(), siteLotteryOdds));
        listmap.add(getOdds(LotteryBettingEnum.SFC_DRAGON_TIGER_58.getCode(), siteLotteryOdds));
        listmap.add(getOdds(LotteryBettingEnum.SFC_DRAGON_TIGER_67.getCode(), siteLotteryOdds));
        listmap.add(getOdds(LotteryBettingEnum.SFC_DRAGON_TIGER_68.getCode(), siteLotteryOdds));
        listmap.add(getOdds(LotteryBettingEnum.SFC_DRAGON_TIGER_78.getCode(), siteLotteryOdds));
        return listmap;
    }
    /**
     * 获取龙虎相关赔率信息
     *
     * @param code
     * @return
     */
    @RequestMapping("/getTwoSideOdds")
    @ResponseBody
    public ArrayList<Map<String, SiteLotteryOdd>> getTwoSideOdds(String code) {
        //赔率
        Map<String, SiteLotteryOdd> siteLotteryOdds = getSiteLotteryOdds(code);
        ArrayList<Map<String, SiteLotteryOdd>> listmap = new ArrayList<Map<String, SiteLotteryOdd>>(10);
        listmap.add(getOdds(LotteryBettingEnum.SFC_SUM8.getCode(), siteLotteryOdds));
        listmap.add(getOdds(LotteryBettingEnum.SFC_DRAGON_TIGER_18.getCode(), siteLotteryOdds));
        listmap.add(getOdds(LotteryBettingEnum.SFC_FIRST.getCode(), siteLotteryOdds));
        listmap.add(getOdds(LotteryBettingEnum.SFC_SECOND.getCode(), siteLotteryOdds));
        listmap.add(getOdds(LotteryBettingEnum.SFC_THIRD.getCode(), siteLotteryOdds));
        listmap.add(getOdds(LotteryBettingEnum.SFC_FOURTH.getCode(), siteLotteryOdds));
        listmap.add(getOdds(LotteryBettingEnum.SFC_FIFTH.getCode(), siteLotteryOdds));
        listmap.add(getOdds(LotteryBettingEnum.SFC_SIXTH.getCode(), siteLotteryOdds));
        listmap.add(getOdds(LotteryBettingEnum.SFC_SEVENTH.getCode(), siteLotteryOdds));
        listmap.add(getOdds(LotteryBettingEnum.SFC_EIGHTH.getCode(), siteLotteryOdds));
        return listmap;
    }
    public String getBetInfo(String code, String betCode) {
        return JsonTool.toJson(getOdds(code, betCode));
    }
}
