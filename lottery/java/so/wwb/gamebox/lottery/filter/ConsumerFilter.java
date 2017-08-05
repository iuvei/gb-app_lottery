package so.wwb.gamebox.lottery.filter;

import com.alibaba.dubbo.rpc.*;
import org.soul.commons.init.context.AbstractBaseVo;
import org.soul.commons.log.Log;
import org.soul.commons.log.LogFactory;
import so.wwb.gamebox.lottery.session.SessionManager;
import so.wwb.gamebox.web.cache.Cache;

/**
 * Created by longer on 3/19/15.
 * Dubbo实体拦截器:
 *      实现相关属性的注入
 */
public class ConsumerFilter implements Filter {

    private static final Log LOG = LogFactory.getLog(ConsumerFilter.class);

    @Override
    public Result invoke(Invoker<?> invoker, Invocation invocation) throws RpcException {

        Result result = null;
        Object[] args = invocation.getArguments();
        try {
            for (Object arg : args) {
                if( arg instanceof AbstractBaseVo){
                    setHiddenValue((AbstractBaseVo) arg);
                } else if ( arg instanceof Object[]){
                    for (Object o : (Object[])arg) {
                        if( o instanceof AbstractBaseVo) {
                            setHiddenValue((AbstractBaseVo) o);
                        }
                    }
                }
            }

            result = invoker.invoke(invocation);
        } catch (Throwable throwable) {
            throw throwable;
        }
        return result;
    }

    protected void setHiddenValue(AbstractBaseVo arg) {
        if(SessionManager.getAttribute(SessionManager.SESSION_IS_LOTTERY_DEMO)!=null){
            if(Cache.getSysSite().containsKey("70")) {
                LOG.debug("设置试玩站点为:70");
                arg._setDataSourceId(70);
            }else{
                LOG.debug("设置试玩站点:70,不存在!");
            }
        }
    }
}
