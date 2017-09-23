package so.wwb.gamebox.lottery.hall.lhc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import so.wwb.gamebox.lottery.hall.controller.BaseLotteryController;
import so.wwb.gamebox.model.CacheBase;
import so.wwb.gamebox.model.enums.lottery.LotteryTypeEnum;

import java.util.Map;

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
    static final String LINK_CODE_URL = "/hall/lhc/%s/LinkCode";
    /* 半波 */
    static final String HALF_WAVE_URL = "/hall/lhc/%s/HalfWave";
    /* 一肖/尾 */
    static final String ONE_ZODIAC_URL = "/hall/lhc/%s/OneZodiac";
    /* 特肖 */
    static final String SPECIAL_ZODIAC_URL = "/hall/lhc/%s/SpecialZodiac";
    /* 合肖 */
    static final String SUM_ZODIAC_URL = "/hall/lhc/%s/SumZodiac";
    /* 连肖 */
    static final String SUCCESSIVE_ZODIAC_URL = "/hall/lhc/%s/SuccessiveZodiac";
    /* 尾数连 */
    static final String LINK_MANTISSA_URL = "/hall/lhc/%s/LinkMantissa";
    /* 全不中 */
    static final String ALL_NO_IN_URL = "/hall/lhc/%s/AllNoIn";

    /**
     * 获取生肖对应数字
     * @return
     */
    protected Map<String,String[]> getZodiacNumMap(){
        return CacheBase.getLotteryLhcZodiacNumsMap();
    }
}
