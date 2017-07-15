package so.wwb.gamebox.lottery.tools;

import org.soul.commons.init.context.CommonContext;
import so.wwb.gamebox.model.company.lottery.po.SiteLotteryOdd;
import so.wwb.gamebox.model.enums.lottery.LotteryEnum;
import so.wwb.gamebox.web.cache.Cache;

/**
 * 赔率工具
 * Created by fei on 17-4-7.
 */
public class OddsTool {

    /**
     * 获取投注赔率
     * @param code 彩种Code
     * @param betCode 玩法Code
     * @param betNum 投注号码
     * @return 赔率
     */
    public static String getOdds(String code, String betCode, String betNum) {
        Integer siteId = CommonContext.get().getSiteId();
        SiteLotteryOdd odd = Cache.getSiteLotteryOdds(siteId, code + "@" + betCode + "@" + betNum);
        if (odd != null) {
            return formatInteger(odd.getOdd()) + formatDecimals(odd.getOdd());
        }
        return "";
    }
    /** 格式化整数 */
    private static String formatInteger(Number number) {
        String numberSt = String.valueOf(number);
        return numberSt.substring(0, numberSt.indexOf("."));
    }
    /** 格式化小数 */
    private static String formatDecimals(Number number) {
        String numberSt = String.valueOf(number);
        String decimals = numberSt.substring(numberSt.indexOf("."), numberSt.length());
        return ".0".equals(decimals) ? "" : decimals;
    }

    /**
     * 获取重庆时时彩的赔率
     */
    public static String getCqsscOdds(String betCode, String betNum) {
        return String.valueOf(getOdds(LotteryEnum.CQSSC.getCode(), betCode, betNum));
    }

    /**
     * 获取北京PK10赔率
     */
    public static String getBjPk10Odds(String betCode, String betNum) {
        return String.valueOf(getOdds(LotteryEnum.BJPK10.getCode(), betCode, betNum));
    }

    /**
     * 获取香港六合彩赔率
     */
    public static String getHkLhcOdds(String betCode, String betNum) {
        return String.valueOf(getOdds(LotteryEnum.HKLHC.getCode(), betCode, betNum));
    }

}
