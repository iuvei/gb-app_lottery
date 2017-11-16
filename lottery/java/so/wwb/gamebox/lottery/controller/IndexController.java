package so.wwb.gamebox.lottery.controller;

import org.json.JSONObject;
import org.soul.commons.enums.EnumTool;
import org.soul.commons.init.context.CommonContext;
import org.soul.commons.lang.string.I18nTool;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import so.wwb.gamebox.model.enums.lottery.LotteryEnum;
import so.wwb.gamebox.web.cache.Cache;
import so.wwb.gamebox.web.lottery.controller.BaseDemoController;

import java.util.Map;

/**
 * 彩票首页
 * Created by tony on 15-4-29.
 */
@Controller
public class IndexController  extends BaseDemoController {
    private static final String INDEX_URI = "index";

    @RequestMapping(value = "index")
    protected String index(Model model, String code) {
        LotteryEnum lotteryEnum = EnumTool.enumOf(LotteryEnum.class,code);
        if(lotteryEnum != null){
            model.addAttribute("type", lotteryEnum.getType());
            model.addAttribute("code", lotteryEnum.getCode());
        }
        return INDEX_URI;
    }

    /**
     * 初始化加载语言字典
     */
    @RequestMapping(value = "index/language")
    @ResponseBody
    protected String language() {
        JSONObject jb = new JSONObject();
        String languageCurrent = CommonContext.get().getLocale().toString();
        Map languageDicts = Cache.getAvailableSiteLanguage();
        Map<String, Map<String, Map<String, String>>> dicts = I18nTool.getDictsMap(languageCurrent);
        jb.put("languageCurrent", languageCurrent);
        jb.put("languageDicts", languageDicts);
        jb.put("languageI18n", dicts.get("soul-common").get("language"));

        return jb.toString();
    }

    @Override
    protected String getDemoIndex() {
        return INDEX_URI;
    }
}
