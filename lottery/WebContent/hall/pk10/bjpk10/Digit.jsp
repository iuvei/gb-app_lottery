<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<%-- 数字盘 --%>
<div class="lot-content clearfix">
    <div class="fl main-left">
        <div class="hd rehd clearfix">
                <%@ include file="../../common/ShortMoney.jsp" %>
        </div>

        <%-- 1 至 5 名 --%>
        <%@ include file="digit/1to5.jsp" %>
        <%-- 6 至 10 名 --%>
        <%@ include file="digit/6to10.jsp" %>

        <div class="btns">
            <button type="submit" class="btn btn-1">提交</button>
            <button class="btn btn-2">重设</button>
        </div>
    </div>

    <%@ include file="../include/include.rank.jsp" %>
</div>

<script type="text/javascript">
    curl(['site/hall/pk10/PlayWay'], function(PlayWay) {
        page.playWay = new PlayWay();
    });
</script>
