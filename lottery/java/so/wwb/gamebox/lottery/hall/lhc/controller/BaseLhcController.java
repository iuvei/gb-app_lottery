package so.wwb.gamebox.lottery.hall.lhc.controller;

import org.soul.commons.collections.CollectionTool;
import org.soul.commons.data.json.JsonTool;
import org.soul.commons.lang.DateTool;
import org.soul.commons.lang.string.StringTool;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import so.wwb.gamebox.lottery.hall.controller.BaseLotteryController;
import so.wwb.gamebox.lottery.session.SessionManager;
import so.wwb.gamebox.model.company.lottery.bean.ErrorCode;
import so.wwb.gamebox.model.company.lottery.bean.OrderBean;
import so.wwb.gamebox.model.company.lottery.po.LotteryHandicapLhc;
import so.wwb.gamebox.model.company.lottery.po.LotteryLhcZodiac;
import so.wwb.gamebox.model.company.lottery.po.LotteryResult;
import so.wwb.gamebox.model.enums.lottery.LotteryTypeEnum;
import so.wwb.gamebox.model.master.lottery.po.LotteryBetOrder;
import so.wwb.gamebox.web.ServiceToolBase;

import java.util.*;

/**
 * 六合彩
 * Created by fei on 17-4-6.
 */
@Controller
@RequestMapping("/lhc")
public class BaseLhcController extends BaseLotteryController {
    /*大彩种－六合彩*/
    public static final String TYPE = LotteryTypeEnum.LHC.getCode();

    static final String INDEX_URL = "/hall/lhc/%s/Index";
    /* 特码 */
    static final String SPECIAL_CODE_URL = "/hall/lhc/%s/SpecialCode";
    /* 正码 */
    static final String NORMAL_CODE_URL = "/hall/lhc/%s/NormalCode";
    /* 正特码 */
    static final String NORMAL_SPECIAL_CODE_URL = "/hall/lhc/%s/NormalSpecialCode";
    /*正特码子页*/
    static final String NORMAL_SPECIAL_CODE_PARTIAL_URL = "/hall/lhc/%s/include/NormalSpecialCodePartial";
    /* 正码1-6 */
    static final String NORMAL_1_TO_6_URL = "/hall/lhc/%s/Normal1to6";
    /* 连码 */
    static final String SUCCESSIVE_CODE_URL = "/hall/lhc/%s/SuccessiveCode";
    /* 半波 */
    static final String HALF_WAVE_URL = "/hall/lhc/%s/HalfWave";
    /* 一肖/尾 */
    static final String ONE_ZODIAC_URL = "/hall/lhc/%s/OneZodiac";
    /* 特肖 */
    static final String SPECIAL_ZODIAC_URL = "/hall/lhc/%s/SpecialZodiac";
    /* 合肖 */
    static final String SHUT_ZODIAC_URL = "/hall/lhc/%s/ShutZodiac";
    /* 连肖 */
    static final String SUCCESSIVE_ZODIAC_URL = "/hall/lhc/%s/SuccessiveZodiac";
    /* 尾数连 */
    static final String MANTISSA_SUCCESSIVE_URL = "/hall/lhc/%s/MantissaSuccessive";
    /* 全不中 */
    static final String ALL_NOT_IN_URL = "/hall/lhc/%s/AllNotIn";

    // 获取期数
    @RequestMapping("/getExpect")
    @ResponseBody
    public Map<String, Object> getExpect(String code) {
        Map<String, Object> map = new HashMap<>(4,1f);
        LotteryResult handicap = getHandicap(code);
        setHandicap(map, handicap);
        return map;
    }

    @RequestMapping("/getRecent5Records")
    @ResponseBody
    public String getRecent5Records(String code) {
        return JsonTool.toJson(getOpenHistory(code));
    }

    /**
     * 获取生肖对应数字
     * @return
     */
    protected Map<String,List<String>> getZodiacNumMap(){
        Map<String,List<String>> map = null;
        List<LotteryLhcZodiac> list = ServiceToolBase.lotteryLhcZodiacService().queryZodiacNumList();
        if(CollectionTool.isNotEmpty(list)){
            map = new HashMap<>(12,1f);
            for (LotteryLhcZodiac zodiac : list) {
                if(zodiac != null){
                    map.put(zodiac.getZodiacName(),zodiac.getNumList());
                }
            }
        }
        return map;
    }
}
