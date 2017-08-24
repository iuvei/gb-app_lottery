    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<%-- 双面 --%>
<div class="lot-content clearfix">
    <div class="fl main-left">
        <div class="hd clearfix">
            <div class="fl">快捷金额：<input type="text" class="txt"></div>
            <%@ include file="../../common/ShortcutkeyButton.jsp" %>
        </div>

        <div class="table-common">
            <table width="100%" border="1">
                <thead>
                <tr>
                    <th>&nbsp;</th>
                    <th colspan="2">大</th>
                    <th colspan="2">小</th>
                    <th colspan="2">单</th>
                    <th colspan="2">双</th>
                    <th colspan="2">龙</th>
                    <th colspan="2">虎</th>
                </tr>
                </thead>
                <tbody>
                <%-- 冠军 --%>
                <c:set var="odds" value="${oddMap['champion']}"/>
                <c:set var="playGroupName" value="冠军"/>
                <%@ include file="twoSide/DragonTiger.jsp" %>
                <%-- 亚军 --%>
                <c:set var="playGroupName" value="亚军"/>
                <c:set var="odds" value="${oddMap['runner_up']}"/>
                <%@ include file="twoSide/DragonTiger.jsp" %>
                <%-- 季军 --%>
                <c:set var="playGroupName" value="季军"/>
                <c:set var="odds" value="${oddMap['third_runner']}"/>
                <%@ include file="twoSide/DragonTiger.jsp" %>
                <%-- 第四名 --%>
                <c:set var="playGroupName" value="第四名"/>
                <c:set var="odds" value="${oddMap['fourth_place']}"/>
                <%@ include file="twoSide/DragonTiger.jsp" %>
                <%-- 第五名 --%>
                <c:set var="playGroupName" value="第五名"/>
                <c:set var="odds" value="${oddMap['fifth_place']}"/>
                <%@ include file="twoSide/DragonTiger.jsp" %>
                <%-- 第六名 --%>
                <c:set var="playGroupName" value="第六名"/>
                <c:set var="odds" value="${oddMap['sixth_place']}"/>
                <%@ include file="twoSide/TwoSide.jsp" %>
                <%-- 第七名 --%>
                <c:set var="playGroupName" value="第七名"/>
                <c:set var="odds" value="${oddMap['seventh_place']}"/>
                <%@ include file="twoSide/TwoSide.jsp" %>
                <%-- 第八名 --%>
                <c:set var="playGroupName" value="第八名"/>
                <c:set var="odds" value="${oddMap['eighth_place']}"/>
                <%@ include file="twoSide/TwoSide.jsp" %>
                <%-- 第九名 --%>
                <c:set var="playGroupName" value="第九名"/>
                <c:set var="odds" value="${oddMap['ninth_place']}"/>
                <%@ include file="twoSide/TwoSide.jsp" %>
                <%-- 第十名 --%>
                <c:set var="playGroupName" value="第十名"/>
                <c:set var="odds" value="${oddMap['tenth_place']}"/>
                <%@ include file="twoSide/TwoSide.jsp" %>
                </tbody>
            </table>
        </div>

        <div class="btns">
            <button type="submit" class="btn btn-1">提交</button>
            <button class="btn btn-2">重设</button>
        </div>
    </div>

    <%@ include file="include.rank.jsp" %>
</div>
<script type="text/javascript">
    curl(['site/hall/pk10/PlayWay'], function(PlayWay) {
        page.playWay = new PlayWay();
    });
</script>
