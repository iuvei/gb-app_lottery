package so.wwb.gamebox.lottery.controller;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.json.JSONObject;
import org.soul.commons.bean.Pair;
import org.soul.commons.dubbo.DubboTool;
import org.soul.commons.init.context.CommonContext;
import org.soul.commons.lang.DateTool;
import org.soul.commons.lang.string.I18nTool;
import org.soul.commons.net.IpTool;
import org.soul.iservice.passport.IPassportService;
import org.soul.model.passport.vo.PassportVo;
import org.soul.model.security.privilege.po.SysUser;
import org.soul.model.security.privilege.vo.SysUserVo;
import org.soul.model.session.SessionKey;
import org.soul.web.controller.BaseIndexController;
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
import java.util.Date;
import java.util.Map;

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
     * 试玩入口
     * @param model
     * @return
     */
    @RequestMapping(value = "/demo/index")
    protected String demoIndex(Model model, HttpServletRequest request, HttpServletResponse response) {
        if(SessionManager.getAttribute("Is_Demo")==null) {

            String defaultCurrency=Cache.getSysSite().get(CommonContext.get().getSiteId().toString()).getMainCurrency();
            String defaultLocale=Cache.getSysSite().get(CommonContext.get().getSiteId().toString()).getMainLanguage();

            String userName = CommonContext.get().getSiteCode()+ DateTool.formatDate(new Date(), "YYMMDDHHmmss");
            SysUserVo sysUserVo=new SysUserVo();
            sysUserVo.setResult(new SysUser());
            sysUserVo.getResult().setUsername(userName);
            sysUserVo.getResult().setNickname(userName);
            sysUserVo.getResult().setPassword(userName);
            sysUserVo.getResult().setSubsysCode(ConfigManager.getConfigration().getSubsysCode());
            sysUserVo.getResult().setUserType(UserTypeEnum.PLAYER.getCode());
            sysUserVo.getResult().setDefaultCurrency(defaultCurrency);
            sysUserVo.getResult().setDefaultLocale(defaultLocale);
            sysUserVo=  ServiceTool.sysUserService().insert(sysUserVo);

            PlayerApiAccountVo playerApiAccountVo=new PlayerApiAccountVo();
            playerApiAccountVo.setResult(new PlayerApiAccount());
            playerApiAccountVo.getResult().setAccount(userName);
            playerApiAccountVo.getResult().setPassword( userName);
            playerApiAccountVo.getResult().setCurrency(defaultCurrency);
            playerApiAccountVo.getResult().setLocale(defaultLocale);
            playerApiAccountVo.getResult().setApiId(Integer.valueOf(ApiProviderEnum.PL.getCode()));
            playerApiAccountVo.getResult().setUserId(sysUserVo.getResult().getId());
            playerApiAccountVo.getResult().setUserName(userName);
            playerApiAccountVo.getResult().setCreateTime(new Date());
            playerApiAccountVo.getResult().setLastLoginTime(new Date());
            playerApiAccountVo.getResult().setLastLoginIp(IpTool.ipv4StringToLong(CommonContext.get().getUserIp()));
            playerApiAccountVo=  DubboTool.getService(IPlayerApiAccountService.class).insert(playerApiAccountVo);

            PlayerApiVo playerApiVo=new PlayerApiVo();
            playerApiVo.setResult(new PlayerApi());
            playerApiVo.getResult().setMoney(200d);
            playerApiVo.getResult().setApiId(Integer.valueOf(ApiProviderEnum.PL.getCode()));
            playerApiVo.getResult().setPlayerId(sysUserVo.getResult().getId());
            ServiceTool.playerApiService().insert(playerApiVo);

            Map<String, Pair<String, Boolean>> urlPermission = fetchUrlPermission(sysUserVo.getResult());
            SessionManager.setAttribute(SessionKey.S_USER_PERMISSIONS, urlPermission);

            LocalToken token = new LocalToken();
            token.setUsername(userName);
            token.setUserType(UserTypeEnum.PLAYER.getCode());
            token.setId(sysUserVo.getResult().getId());
            token.setPassword(AuthTool.md5SysUserPassword(userName, userName).toCharArray());
            token.setHost(request.getRemoteHost());
            token._setEntrance(PassportVo.PLAYER);
            token.setSiteId(CommonContext.get().getSiteId());
            Subject subject = SecurityUtils.getSubject();
            subject.login(token);

            SessionManager.setUser(sysUserVo.getResult());
            SessionManager.setAttribute(SessionKey.S_USER_ID,sysUserVo.getResult().getId());
            SessionManager.setAttribute(SessionKey.S_LOGIN_TIME, new Date());
            SessionManager.setAttribute(SessionKey.S_ENTRANCE, String.valueOf(token._getEntrance()));
            SessionManager.setAttribute(SessionKey.S_SITE_ID, CommonContext.get().getSiteId());
            SessionManager.setAttribute(SessionKey.S_SITE_USER_ID, CommonContext.get().getSiteUserId());
            SessionManager.setAttribute(SessionKey.S_SITE_PARENT_ID, CommonContext.get().getSiteParentId());
            SessionManager.setAttribute(SessionManager.SESSION_IS_LOTTERY_DEMO, "true");
        }
        return INDEX_URI;
    }
    private Map<String, Pair<String, Boolean>> fetchUrlPermission(SysUser sysUser) {
        PassportVo vo = new PassportVo();
        vo.getSearch().setSubsysCode(sysUser.getSubsysCode());
        vo.getSearch().setSiteId(sysUser.getSiteId());
        vo.getSearch().setUsername(sysUser.getUsername());
        vo.getSearch().setUserType(sysUser.getUserType());
        return getPassportService().findPermissionMapping(vo);
    }
    public IPassportService getPassportService() {
        return DubboTool.getService(IPassportService.class);
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
