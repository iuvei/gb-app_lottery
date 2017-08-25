<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<div class="lot-content clearfix">
    <div class="fl main-left ">
        <div class="hd rehd clearfix">
                <%@ include file="../../common/ShortMoney.jsp" %>
        </div>

        <div class="table-common">
            <table class="xyft-table" style="width:100%!important;">
                <tbody>
                <tr>
                    <td class="td_style_pm">
                        <%-- 冠军 --%>
                        <c:set var="odds" value="${oddMap['champion']}"/>
                        <c:set var="playGroupName" value="冠军"/>
                        <%@ include file="ranking/DragonTiger.jsp" %>
                        <%-- 第六名 --%>
                        <c:set var="playGroupName" value="第六名"/>
                        <c:set var="odds" value="${oddMap['sixth_place']}"/>
                        <%@ include file="ranking/Ranking.jsp" %>
                    </td>

                    <td class="td_style_pm">
                        <%-- 亚军 --%>
                        <c:set var="playGroupName" value="亚军"/>
                        <c:set var="odds" value="${oddMap['runner_up']}"/>
                        <%@ include file="ranking/DragonTiger.jsp" %>
                        <%-- 第七名 --%>
                        <c:set var="playGroupName" value="第七名"/>
                        <c:set var="odds" value="${oddMap['seventh_place']}"/>
                        <%@ include file="ranking/Ranking.jsp" %>
                    </td>

                    <td class="td_style_pm">
                        <%-- 季军 --%>
                        <c:set var="playGroupName" value="季军"/>
                        <c:set var="odds" value="${oddMap['third_runner']}"/>
                        <%@ include file="ranking/DragonTiger.jsp" %>
                        <%-- 第八名 --%>
                        <c:set var="playGroupName" value="第八名"/>
                        <c:set var="odds" value="${oddMap['eighth_place']}"/>
                        <%@ include file="ranking/Ranking.jsp" %>
                    </td>

                    <td class="td_style_pm">
                        <%-- 第四名 --%>
                        <c:set var="playGroupName" value="第四名"/>
                        <c:set var="odds" value="${oddMap['fourth_place']}"/>
                        <%@ include file="ranking/DragonTiger.jsp" %>
                        <%-- 第九名 --%>
                        <c:set var="playGroupName" value="第九名"/>
                        <c:set var="odds" value="${oddMap['ninth_place']}"/>
                        <%@ include file="ranking/Ranking.jsp" %>
                    </td>
                    <td class="td_style_pm">
                        <%-- 第五名 --%>
                        <c:set var="playGroupName" value="第五名"/>
                        <c:set var="odds" value="${oddMap['fifth_place']}"/>
                        <%@ include file="ranking/DragonTiger.jsp" %>
                        <%-- 第十名 --%>
                        <c:set var="playGroupName" value="第十名"/>
                        <c:set var="odds" value="${oddMap['tenth_place']}"/>
                        <%@ include file="ranking/Ranking.jsp" %>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>

        <div class="btns">
            <button type="submit" class="btn btn-1">提交</button>
            <button class="btn btn-2">重设</button>
        </div>
    </div>

    <div class="fr main-right main-right-xyft cl-10  lm_height p-r-0">

    </div>
</div>
<script type="text/javascript">
    curl(['site/hall/pk10/PlayWay'], function(PlayWay) {
        page.playWay = new PlayWay();
    });
</script>