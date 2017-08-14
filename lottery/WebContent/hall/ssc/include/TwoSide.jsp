<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>

<%-- 双面 --%>
<div class="lot-content clearfix">
    <div class="fl main-left">
        <div class="hd clearfix">
            <div class="fl">快捷金额：<input type="text" class="txt" /></div>
        </div>

        <div class="table-common">
            <%-- 万位 --%>
            <c:set var="playGroupName" value="万位"/>
            <c:set var="odds" value="${oddList.get(0)}"/>
            <%@ include file="twoSide/TwoSide.jsp" %>
            <%-- 千位 --%>
            <c:set var="playGroupName" value="千位"/>
            <c:set var="odds" value="${oddList.get(1)}"/>
            <%@ include file="twoSide/TwoSide.jsp" %>
            <%-- 百位 --%>
            <c:set var="playGroupName" value="百位"/>
            <c:set var="odds" value="${oddList.get(2)}"/>
            <%@ include file="twoSide/TwoSide.jsp" %>
            <%-- 十位 --%>
            <c:set var="playGroupName" value="十位"/>
            <c:set var="odds" value="${oddList.get(3)}"/>
            <%@ include file="twoSide/TwoSide.jsp" %>
            <%-- 个位 --%>
            <c:set var="playGroupName" value="个位"/>
            <c:set var="odds" value="${oddList.get(4)}"/>
            <%@ include file="twoSide/TwoSide.jsp" %>
            <%-- 总和、龙虎和 --%>
            <%@ include file="twoSide/DragonTigerSum.jsp" %>
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