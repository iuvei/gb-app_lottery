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
                <c:set value="0" var="numSum"/>
                <c:set value="${false}" var="sumFlag"/>
                <span class="sp4">
                    <c:if test="${!empty item.openCode}">
                        <c:set value="${fn:split(item.openCode, ',')}" var="openCodes"/>
                        <c:forEach var="rs" items="${openCodes}" varStatus="vs">
                            <i>${rs}</i>
                            <c:set value="${numSum+rs}" var="numSum"></c:set>
                        </c:forEach>
                        <c:if test="${openCodes[0] eq openCodes[1] && openCodes[0] eq openCodes[2]}">
                            <c:set value="${true}" var="sumFlag"/>
                        </c:if>
                    </c:if>
                </span>
                <span class="sp5">${numSum}</span>
                <c:if test="${sumFlag}">
                    <span class="sp5">通吃</span>
                    <span class="sp5">通吃</span>
                </c:if>
                <c:if test="${!sumFlag}">
                    <span class="sp5"><c:if test="${numSum%2 == 0}">双</c:if><c:if test="${numSum%2 != 0}">单</c:if></span>
                    <span class="sp5"><c:if test="${numSum>=11}">大</c:if><c:if test="${numSum <= 10}">小</c:if></span>
                </c:if>
                <%--<span class="sp8"><a href="javascript:void(0)"><img src="http://www.600wan0.net:80/static/theme/default/img/ico73.png" alt="" onclick="openGcdt('zst/cqssc')"></a></span>--%>
                <span class="sp9"><a href="javascript:void(0)" class="a1" data-page="/${type}/${code}/index.html">立即购彩</a></span>
            </li>
        </c:forEach>
    </ul>
</div>

