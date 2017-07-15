package so.wwb.gamebox.lottery.controller;

import org.soul.commons.lang.SystemTool;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by admin on 16-4-14.
 */
@Controller
@RequestMapping("/login")
public class LoginController {

    public static final String LOGIN_URI = "/login";
    public static final String LOGIN_URI_DEBUG = "/passport/Login";
    @RequestMapping(value = "/commonLogin")
    public String commonLogin() {
        if(SystemTool.isDebug()){
            return LOGIN_URI_DEBUG;
        }else {
            return LOGIN_URI;
        }
    }
}
