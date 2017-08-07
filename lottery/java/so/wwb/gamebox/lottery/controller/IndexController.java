package so.wwb.gamebox.lottery.controller;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.json.JSONObject;
import org.soul.commons.bean.Pair;
import org.soul.commons.dubbo.DubboTool;
import org.soul.commons.init.context.CommonContext;
import org.soul.commons.init.context.ContextParam;
import org.soul.commons.lang.DateTool;
import org.soul.commons.lang.string.I18nTool;
import org.soul.commons.net.IpTool;
import org.soul.commons.spring.utils.SpringTool;
import org.soul.iservice.passport.IPassportService;
import org.soul.model.log.audit.enums.OpMode;
import org.soul.model.passport.vo.PassportVo;
import org.soul.model.security.privilege.po.SysUser;
import org.soul.model.security.privilege.vo.SysUserVo;
import org.soul.model.session.SessionKey;
import org.soul.web.controller.BaseIndexController;
import org.soul.web.log.audit.AuditLogTool;
import org.soul.web.session.RedisSessionDao;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import so.wwb.gamebox.common.security.AuthTool;
import so.wwb.gamebox.iservice.master.player.IPlayerApiAccountService;
import so.wwb.gamebox.lottery.init.ConfigManager;
import so.wwb.gamebox.lottery.session.SessionManager;
import so.wwb.gamebox.lottery.tools.ServiceTool;
import so.wwb.gamebox.model.enums.UserTypeEnum;
import so.wwb.gamebox.model.gameapi.enums.ApiProviderEnum;
import so.wwb.gamebox.model.master.player.po.PlayerApi;
import so.wwb.gamebox.model.master.player.po.PlayerApiAccount;
import so.wwb.gamebox.model.master.player.vo.PlayerApiAccountVo;
import so.wwb.gamebox.model.master.player.vo.PlayerApiVo;
import so.wwb.gamebox.web.cache.Cache;
import so.wwb.gamebox.web.shiro.local.authc.LocalToken;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;

/**
 * 彩票首页
 * Created by tony on 15-4-29.
 */
@Controller
public class IndexController extends BaseIndexController {
    private static final String INDEX_URI = "index";

    @RequestMapping(value = "index")
    protected String index(Model model) {
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

}
