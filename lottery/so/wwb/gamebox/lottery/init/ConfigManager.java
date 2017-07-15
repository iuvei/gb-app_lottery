package so.wwb.gamebox.lottery.init;

import org.soul.commons.spring.utils.SpringTool;
import org.soul.web.init.BaseConfigManager;
import so.wwb.gamebox.web.init.ExtBaseConfigManager;

/**
 * Created by tony on 15-4-28.
 */
public class ConfigManager extends ExtBaseConfigManager {

    public static LotteryConfigration getConfigration() {
        return SpringTool.getBean(LotteryConfigration.class);
    }

}
