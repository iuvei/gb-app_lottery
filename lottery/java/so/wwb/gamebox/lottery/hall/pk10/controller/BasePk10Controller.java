package so.wwb.gamebox.lottery.hall.pk10.controller;

import org.soul.commons.collections.MapTool;
import org.soul.commons.data.json.JsonTool;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import so.wwb.gamebox.lottery.hall.controller.BaseLotteryController;
import so.wwb.gamebox.lottery.session.SessionManager;
import so.wwb.gamebox.model.company.lottery.po.SiteLotteryOdd;
import so.wwb.gamebox.model.enums.lottery.LotteryBettingEnum;
import so.wwb.gamebox.model.enums.lottery.LotteryPlayEnum;
import so.wwb.gamebox.model.enums.lottery.LotteryTypeEnum;
import so.wwb.gamebox.web.cache.Cache;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * PK10
 * Created by fei on 17-4-5.
 */
@Controller
@RequestMapping("/pk10")
public class BasePk10Controller extends BaseLotteryController {
    /*大彩种*/
    static final String TYPE = LotteryTypeEnum.PK10.getCode();

    static final String INDEX_URL = "/hall/pk10/%s/Index";

    static final String GFWFINDEX_URL = "/hall/pk10/%s-gfwf/Index";
    /**
     * 双面
     */
    static final String TWO_SIDE_URL = "/hall/pk10/include/TwoSide";
    /**
     * 数字盘
     */
    static final String DIGIT_URL = "/hall/pk10/%s/Digit";
    /**
     * 名次（冠军 -> 第十名）
     */
    static final String RANKING_URL = "/hall/pk10/%s/Ranking";
    /**
     * 冠亚和
     */
    static final String SUM_URL = "/hall/pk10/%s/Sum";
    //***********官方玩法***********
    /**
     * 前一
     */
    static final String FIRST_ONE_URL = "/hall/pk10/include/FirstOne";
    /**
     * 前二
     */
    static final String FIRST_TWO_URL = "/hall/pk10/include/FirstTwo";
    /**
     * 前三
     */
    static final String FIRST_THREE_URL = "/hall/pk10/include/FirstThree";
    /**
     * 定位胆
     */
    static final String DINGWEI_DAN_URL = "/hall/pk10/include/DingWeiDan";


    /**
     * pk10最近20条开彩记录
     *
     * @param code
     * @return
     */
    @RequestMapping("/getRecent30Records")
    @ResponseBody
    public String getRecent30Records(String code) {
        return JsonTool.toJson(getOpenedHistory(code, 30));
    }
    /**
     * pk10最近100条开彩记录
     *
     * @param code
     * @return
     */
    @RequestMapping("/getRecent100Records")
    @ResponseBody
    public String getRecent100Records(String code) {
        return JsonTool.toJson(getOpenedHistory(code, 100));
    }



    /**
     * 初始化彩种玩法
     */
    private void initPlayCode(Model model) {
        model.addAttribute("pk10Digital", LotteryPlayEnum.PK10_DIGITAL.getCode());
        model.addAttribute("pk10BigSmall", LotteryPlayEnum.PK10_BIG_SMALL.getCode());
        model.addAttribute("pk10SingleDouble", LotteryPlayEnum.PK10_SINGLE_DOUBLE.getCode());
        model.addAttribute("pk10DragonTiger", LotteryPlayEnum.PK10_DRAGON_TIGER.getCode());
        model.addAttribute("championUp34", LotteryPlayEnum.CHAMPION_UP_34.getCode());
        model.addAttribute("championUp56", LotteryPlayEnum.CHAMPION_UP_56.getCode());
        model.addAttribute("championUp78", LotteryPlayEnum.CHAMPION_UP_78.getCode());
        model.addAttribute("championUp910", LotteryPlayEnum.CHAMPION_UP_910.getCode());
        model.addAttribute("championUpAlone11", LotteryPlayEnum.CHAMPION_UP_ALONE_11.getCode());
        model.addAttribute("championUpAlone34", LotteryPlayEnum.CHAMPION_UP_ALONE_34.getCode());
        model.addAttribute("championUpAlone56", LotteryPlayEnum.CHAMPION_UP_ALONE_56.getCode());
        model.addAttribute("championUpAlone78", LotteryPlayEnum.CHAMPION_UP_ALONE_78.getCode());
        model.addAttribute("championUpAlone910", LotteryPlayEnum.CHAMPION_UP_ALONE_910.getCode());
        model.addAttribute("championUpBigSmall", LotteryPlayEnum.CHAMPION_UP_BIG_SMALL.getCode());
        model.addAttribute("championUpSingleDouble", LotteryPlayEnum.CHAMPION_UP_SINGLE_DOUBLE.getCode());
        model.addAttribute("championUpHalf", LotteryPlayEnum.CHAMPION_UP_HALF.getCode());
    }

    @Override
    protected String saveBetOrder(HttpServletRequest request, String code, String betForm) {
        return super.saveBetOrder(request, code, betForm);
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
    /**
     * 获取pk10官方玩法的奖金,返点数据
     * @param code
     * @return
     */
    @RequestMapping("/getGfwfAllOdd")
    @ResponseBody
    public List<Map<String, SiteLotteryOdd>> getGfwfOdd(String code) {
        Map<String, SiteLotteryOdd> siteLotteryOdds = getSiteLotteryOdds(code);
        List<Map<String, SiteLotteryOdd>> oddList = new ArrayList<>();
        oddList.add(getOdds(LotteryBettingEnum.PK10_ZHIXUAN_QYFS.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.PK10_ZHIXUAN_QEFS.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.PK10_ZHIXUAN_QEDS.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.PK10_ZHIXUAN_QSFS.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.PK10_ZHIXUAN_QSDS.getCode(), siteLotteryOdds));
        oddList.add(getOdds(LotteryBettingEnum.PK10_YIXING_DWD.getCode(), siteLotteryOdds));

        return oddList;
    }

}
