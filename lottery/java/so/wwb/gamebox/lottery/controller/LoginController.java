package so.wwb.gamebox.lottery.controller;

import org.soul.commons.lang.SystemTool;
import org.soul.model.security.privilege.po.SysUser;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import so.wwb.gamebox.lottery.session.SessionManager;
import so.wwb.gamebox.web.SessionManagerCommon;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by admin on 16-4-14.
 */
@Controller
@RequestMapping("/login")
public class LoginController {

    public static final String LOGIN_URI = "/login";
    public static final String LOGIN_URI_DEBUG = "/passport/Login";
    @RequestMapping(value = "/commonLogin")
    public String commonLogin(HttpServletRequest request) {
        //如果已经登录
        SysUser sysUser = SessionManager.getUser();
        if (sysUser != null) {
            return "redirect:" + SessionManagerCommon.getRedirectUrl(request, "/");
        }
        if(SystemTool.isDebug()){
            return LOGIN_URI_DEBUG;
        }else {
            return LOGIN_URI;
        }
    }
}
