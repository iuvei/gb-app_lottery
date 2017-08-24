<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>

<%-- 数字盘 --%>
<div class="lot-content clearfix">
    <div class="fl main-left">
        <div class="hd rehd clearfix">
                <%@ include file="../../common/ShortMoney.jsp" %>
        </div>

        <div class="table-common">
            <%-- 万位 --%>
            <c:set var="playGroupName" value="万位"/>
            <c:set var="odds" value="${oddList.get(0)}"/>
            <%@ include file="digit/Digit.jsp" %>
            <%-- 千位 --%>
            <c:set var="playGroupName" value="千位"/>
            <c:set var="odds" value="${oddList.get(1)}"/>
            <%@ include file="digit/Digit.jsp" %>
            <%-- 百位 --%>
            <c:set var="playGroupName" value="百位"/>
            <c:set var="odds" value="${oddList.get(2)}"/>
            <%@ include file="digit/Digit.jsp" %>
            <%-- 十位 --%>
            <c:set var="playGroupName" value="十位"/>
            <c:set var="odds" value="${oddList.get(3)}"/>
            <%@ include file="digit/Digit.jsp" %>
            <%-- 个位 --%>
            <c:set var="playGroupName" value="个位"/>
            <c:set var="odds" value="${oddList.get(4)}"/>
            <%@ include file="digit/Digit.jsp" %>
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