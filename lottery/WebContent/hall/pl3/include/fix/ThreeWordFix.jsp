<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<c:if test="${empty lottery}">
    <li class="init-tip">暂无数据</li>
</c:if>
<c:if test="${not empty lottery}">
<table width="100%" border="1" class="num">
    <thead>
    <tr>
        <c:set var="odd" value="${lottery.odd}"/>
        <input type="hidden" class="lottery" data-name="${dicts.lottery.lottery_betting[lottery.betCode]}" data-odd="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3ThreeDigital}"/>
        <th colspan="21">${dicts.lottery.lottery_betting[lottery.betCode]}（中3@<span class="pl red">${odd}</span>)</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="i" begin="0" end="2" varStatus="o">
        <tr data-name="">
            <td class="pointer"></td>
            <c:forEach var="i" begin="0" end="9" varStatus="o">
                <td class="pointer new-ball-st" data-name="${i}">
                    <strong class="pl">${i}</strong>
                </td>
            </c:forEach>
        </tr>
    </c:forEach>
    </tbody>
</table>
</c:if>
