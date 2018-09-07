package so.wwb.gamebox.lottery.init;

import org.soul.commons.spring.utils.SpringTool;
import org.springframework.stereotype.Component;
import so.wwb.gamebox.web.init.ConfigBase;

/**
 * Created by Kevice on 2015/3/26 0026.
 */
@Component
public class ConfigManager extends ConfigBase {
    public static ConfigManager get() {
        return SpringTool.getBean(ConfigManager.class);
    }
}
