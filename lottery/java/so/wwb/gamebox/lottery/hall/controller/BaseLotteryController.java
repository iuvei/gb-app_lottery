package so.wwb.gamebox.lottery.hall.controller;

import org.soul.commons.init.context.CommonContext;
import org.soul.commons.lang.string.I18nTool;
import org.soul.commons.locale.LocaleDateTool;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import so.wwb.gamebox.lottery.session.SessionManager;
import so.wwb.gamebox.model.DictEnum;
import so.wwb.gamebox.model.Module;
import so.wwb.gamebox.model.company.lottery.po.LotteryResult;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/**
 * 购彩大厅基类
 * Created by fei on 17-4-3.
 */
@Controller
public abstract class BaseLotteryController extends so.wwb.gamebox.web.lottery.controller.BaseLotteryController {

    /**
     * 获取开彩铃声
     */
    protected Map<String, Object> getRings() {
        Map<String, Object> map = new LinkedHashMap<>();
        map.put("铃声一", "/sound/sound_1.mp3");
        map.put("铃声二", "/sound/sound_2.mp3");
        map.put("铃声三", "/sound/sound_3.mp3");
        map.put("铃声四", "/sound/sound_4.mp3");
        map.put("铃声五", "/sound/sound_5.mp3");
        return map;
    }

    /**
     * 最近5条开彩记录
     *
     * @param code 彩种
     * @return 记录
     */
    protected List<LotteryResult> getOpenHistory(String code) {
        List<LotteryResult> lotteryResults = getOpenHistory(code, 5, false);
        Map<String, String> dicts = I18nTool.getDictsMap(SessionManager.getLocale().toString()).get(Module.LOTTERY.getCode()).get(DictEnum.LOTTERY.getType());
        for (LotteryResult result : lotteryResults) {
            result.setFmOpenTime(LocaleDateTool.formatDate(result.getOpenTime(),
                    CommonContext.getDateFormat().getDAY_SECOND(), SessionManager.getTimeZone()));
            result.setCodeMemo(dicts.get(result.getCode()));
        }
        return lotteryResults;
    }


    /**
     * 购彩大厅默认页面显示
     *
     * @param model
     * @param type
     * @param code
     */
    protected void index(Model model, String type, String code) {
        //铃声
        model.addAttribute("rings", getRings());
        // 大彩种
        model.addAttribute("type", type);
        // 小彩种
        model.addAttribute("code", code);
        //前端官方，双面玩法的显示控制
        model.addAttribute("lotteryGenra",getLotteryGenra(code));
    }


}
