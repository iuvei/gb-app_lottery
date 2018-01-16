<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>

<div class="Color_type" style="display: table;">
    <ul>
        <li class="head"><span class="sp1">彩种</span><span class="sp2">期号</span><span class="sp3">开奖时间</span><span class="sp4">开奖号码</span>
            <span style="width: 255px">总和</span>
            <%--<span class="sp8">走势</span>--%>
            <span class="sp9">购彩</span>
        </li>
        <c:forEach var="item" items="${command.result}" varStatus="vs">
            <li>
                <span class="sp1">${dicts.lottery.lottery[item.code]}</span>
                <span class="sp2">${item.expect}</span>
                <span class="sp3">
                        ${soulFn:formatDateTz(item.openTime, DateFormat.DAY_SECOND,timeZone)}
                </span>
                <c:set value="0" var="numSum"></c:set>
                <span class="sp4">
                    <c:if test="${!empty item.openCode}">
                        <c:forEach var="rs" items="${fn:split(item.openCode, ',')}" varStatus="vs">
                            <c:set value="${numSum+rs}" var="numSum"/>
                            <i class="bg-${rs}">${rs}</i>
                            <c:if test="${vs.index < 2}">
                                <i class="plusmin">+</i>
                            </c:if>
                            <c:if test="${vs.index >= 2}">
                                <i class="plusmin">=</i>
                                <i class="xy28-ball">${numSum}</i>
                            </c:if>
                        </c:forEach>
                    </c:if>
                </span>
                <span class="sp5">${numSum}</span>
                <span class="sp5"><c:if test="${numSum%2 == 0}">双</c:if><c:if test="${numSum%2 != 0}">单</c:if></span>
                <span class="sp5"><c:if test="${numSum>=14}">大</c:if><c:if test="${numSum <= 13}">小</c:if></span>
                <%--<span class="sp8"><a href="javascript:void(0)"><img src="http://www.600wan0.net:80/static/theme/default/img/ico73.png" alt="" onclick="openGcdt('zst/cqssc')"></a></span>--%>
                <span class="sp9"><a href="javascript:void(0)" class="a1" data-page="/${type}/${code}/index.html">立即购彩</a></span>
            </li>
        </c:forEach>
    </ul>
</div>
<script>
    $(".Color_type .xy28-ball").each(function () {
        var val = $(this).text();
        var map={
            0:"grayxy28",
            1:"greenxy28",
            2:"bluexy28",
            3:"ball-28xy3",
            4:"greenxy28",
            5:"bluexy28",
            6:"ball-28xy3",
            7:"greenxy28",
            8:"bluexy28",
            9:"ball-28xy3",
            10:"greenxy28",
            11:"bluexy28",
            12:"ball-28xy3",
            13:"grayxy28",
            14:"grayxy28",
            15:"ball-28xy3",
            16:"greenxy28",
            17:"bluexy28",
            18:"ball-28xy3",
            19:"greenxy28",
            20:"bluexy28",
            21:"ball-28xy3",
            22:"greenxy28",
            23:"bluexy28",
            24:"ball-28xy3",
            25:"greenxy28",
            26:"bluexy28",
            27:"grayxy28"
        };
        $(this).addClass(map[val]);
    });
</script>
