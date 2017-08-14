<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>

<%-- 双面 --%>
<div class="lot-content clearfix">
    <div class="fl main-left">
        <div class="hd clearfix">
            <div class="fl">快捷金额：<input type="text" class="txt" /></div>
        </div>

        <div class="table-common">
            <div class="table-common clearfix">
                <table width="180" border="1" class="item">
                    <tbody>
                    <tr>
                        <td data-num="龙1" class="pointer"><strong>龙1</strong></td>
                        <td data-num="和局" class="pointer"><strong>和局</strong></td>
                        <td data-num="虎2" class="pointer"><strong>虎2</strong></td>
                    </tr>

                    <tr>
                        <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
                    </tr>

                    <tr>
                        <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="总和、龙虎和-${lottery.betNum}" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${dragonTiger}" data-bet-num="${lottery.betNum}"></td>

                    </tr>
                    </tbody>
                </table>
            </div>
        </div>

        <div class="btns">
            <button type="submit" class="btn btn-1">提交</button>
            <button class="btn btn-2">重设</button>
        </div>

        <%-- 往期结果 --%>
        <%@ include file="../include/include.result.jsp" %>
    </div>

    <%-- 两面长龙排行 --%>
    <%@ include file="../include/include.rank.jsp" %>
</div>

<script type="text/javascript">
    curl(['site/hall/ssc/PlayWay'], function(PlayWay) {
        page.playWay = new PlayWay();
    });
</script>