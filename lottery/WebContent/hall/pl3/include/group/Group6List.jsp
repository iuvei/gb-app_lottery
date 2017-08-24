<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<c:if test="${fn:length(odds) == 0}">
    <li class="init-tip">暂无数据</li>
</c:if>
<c:if test="${fn:length(odds) > 0}">
<table width="100%" border="1" class="num">
    <thead>
    <tr>
        <c:forEach items="${odds}" var="entry">
            <c:set var="lottery" value="${entry.value}"/>
            <input type="hidden" class="group6Odd_${entry.key}" data-name="组选六" data-odd="${lottery.odd}" data-num="${lottery.betNum}" data-bet-code="${lottery.betCode}" data-play="${pl3GroupSix}"/>
        </c:forEach>
        <th colspan="10">组选六@<span class="pl red group6Odd"></span>(请选择4~8个号码)</th>
    </tr>
    <tr>
        <th width="50">号码</th>
        <th width="50">号码</th>
        <th width="50">号码</th>
        <th width="50">号码</th>
        <th width="50">号码</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="i" begin="0" end="9" varStatus="o">
        <c:if test="${i%5 == 0}">
            <tr>
        </c:if>
        <td class="pointer new-ball-st">
            <strong class="pl">${i}</strong>
            <input class="table-checkbox" type="checkbox" data-num="${i}">
        </td>
        <c:if test="${i%5 == 4}">
            </tr>
        </c:if>
    </c:forEach>
    </tbody>
</table>
</c:if>
