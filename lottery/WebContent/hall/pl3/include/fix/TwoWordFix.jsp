<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<c:if test="${fn:length(odds) == 0}">
    <li class="init-tip">暂无数据</li>
</c:if>
<c:if test="${fn:length(odds) > 0}">
<table width="100%" border="1" class="num">
    <thead>
    <tr>
        <c:set var="lottery" value="${odds[title]}"/>
        <c:set var="odd" value="${lottery.odd}"/>
        <input type="hidden" class="lottery" data-name="${title}定位" data-odd="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3TwoDigital}"/>
        <th colspan="21">${title}定位（中2@<span class="pl red">${odd}</span>)</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${places}" var="place">
        <tr data-name="${place}">
            <td class="pointer">${place}位</td>
            <c:forEach var="i" begin="0" end="9" varStatus="o">
                <td class="pointer new-ball-st">
                    <strong class="pl">${i}</strong>
                    <input type="checkbox" data-name="${i}">
                </td>
            </c:forEach>
        </tr>
    </c:forEach>
    </tbody>
</table>
</c:if>
