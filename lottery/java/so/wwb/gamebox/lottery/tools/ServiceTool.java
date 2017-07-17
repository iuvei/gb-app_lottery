package so.wwb.gamebox.lottery.tools;

import org.soul.iservice.security.privilege.ISysUserService;
import so.wwb.gamebox.iservice.company.lottery.ILotteryHandicapLhcService;
import so.wwb.gamebox.iservice.company.lottery.ILotteryHandicapService;
import so.wwb.gamebox.iservice.company.lottery.ILotteryResultService;
import so.wwb.gamebox.iservice.company.lottery.ILotteryResultSscService;
import so.wwb.gamebox.iservice.company.setting.IGameService;
import so.wwb.gamebox.iservice.master.lottery.ILotteryBetOrderService;
import so.wwb.gamebox.iservice.master.player.IPlayerApiService;
import so.wwb.gamebox.iservice.master.player.IVUserPlayerService;

import static org.soul.commons.dubbo.DubboTool.getService;

/**
 * Created by fei on 17-4-3.
 */
public class ServiceTool {
    public static ISysUserService sysUserService() {
        return getService(ISysUserService.class);
    }

    public static IVUserPlayerService vUserPlayerService() {return getService(IVUserPlayerService.class); }

    public static ILotteryResultSscService lotterSscResultService() {
        return getService(ILotteryResultSscService.class);
    }

    public static ILotteryBetOrderService lotteryBetOrderService() {
        return getService(ILotteryBetOrderService.class);
    }

    public static IPlayerApiService playerApiService() {
        return getService(IPlayerApiService.class);
    }

    public static IGameService gameService() {
        return getService(IGameService.class);
    }

    public static ILotteryHandicapService lotteryHandicapService() {
        return getService(ILotteryHandicapService.class);
    }

    public static ILotteryResultService lotterResultService() {
        return getService(ILotteryResultService.class);
    }

    public static ILotteryHandicapLhcService lotteryHandicapLhcService() {
        return getService(ILotteryHandicapLhcService.class);
    }
    /**
     * 返回彩票频率种类表远程服务实例
     *
     * @return 彩票频率种类表远程服务实例
     */
    public static so.wwb.gamebox.iservice.company.lottery.ILotteryFrequencyTypeService lotteryFrequencyTypeService() {
        return getService(so.wwb.gamebox.iservice.company.lottery.ILotteryFrequencyTypeService.class);
    }


    /**
     * 返回彩票频率表远程服务实例
     *
     * @return 彩票频率表远程服务实例
     */
    public static so.wwb.gamebox.iservice.company.lottery.ILotteryFrequencyService lotteryFrequencyService() {
        return getService(so.wwb.gamebox.iservice.company.lottery.ILotteryFrequencyService.class);
    }

    public static ILotteryResultService lotteryResultService() {
        return getService(ILotteryResultService.class);
    }
}
