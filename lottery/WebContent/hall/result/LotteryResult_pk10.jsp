<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>

<div class="Color_type" style="display: table;">
    <ul>
        <li class="head"><span class="sp1">彩种</span><span class="sp2">期号</span><span class="sp3">开奖时间</span><span class="sp4">开奖号码</span>
            <span style="width: 255px">冠亚和</span>
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
                            <i class="bg-${rs}">${rs}</i>
                            <c:if test="${vs.index==0 || vs.index ==1}">
                            <c:set value="${numSum+rs}" var="numSum"></c:set>
                            </c:if>
                        </c:forEach>
                    </c:if>
                </span>
                <span class="sp5">${numSum}</span>
                <span class="sp5"><c:if test="${item.code == 'bjpk10'}"><c:if test="${numSum == 11}">和</c:if><c:if test="${numSum != 11}"><c:if test="${numSum%2 == 0}">双</c:if><c:if test="${numSum%2 != 0}">单</c:if></c:if></c:if><c:if test="${item.code != 'bjpk10'}"><c:if test="${numSum%2 == 0}">双</c:if><c:if test="${numSum%2 != 0}">单</c:if></c:if></span>
                <span class="sp5"><c:if test="${item.code == 'bjpk10'}"><c:if test="${numSum == 11}">和</c:if><c:if test="${numSum>11}">大</c:if><c:if test="${numSum < 11}">小</c:if></c:if><c:if test="${item.code != 'bjpk10'}"><c:if test="${numSum>=12}">大</c:if><c:if test="${numSum <= 11}">小</c:if></c:if></span>
                <%--<span class="sp8"><a href="javascript:void(0)"><img src="http://www.600wan0.net:80/static/theme/default/img/ico73.png" alt="" onclick="openGcdt('zst/cqssc')"></a></span>--%>
                <span class="sp9"><a href="javascript:void(0)" class="a1" data-page="/${type}/${code}/index.html">立即购彩</a></span>
            </li>
        </c:forEach>
    </ul>
</div>
