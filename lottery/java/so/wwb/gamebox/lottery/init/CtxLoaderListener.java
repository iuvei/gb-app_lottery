package so.wwb.gamebox.lottery.init;

import so.wwb.gamebox.web.init.CommonCtxLoaderListener;

import javax.servlet.ServletContextEvent;

/**
 * Created by Kevice on 2015/3/23 0023.
 */
public class CtxLoaderListener extends CommonCtxLoaderListener {

    @Override
    public void contextInitialized(ServletContextEvent event) {
        super.contextInitialized(event);
        PassportContextPath="";
    }
}
