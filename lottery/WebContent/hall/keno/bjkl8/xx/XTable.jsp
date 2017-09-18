<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<tbody>
<c:forEach var="j" begin="1" end="9">
    <tr>
        <td style="cursor: pointer;" class="new-ball-st" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${playWay}" data-bet-num="${j}" data-name="${j}"><strong class="pl">${j}</strong></td>
        <c:forEach var="i" begin="1" end="7">

            <td style="cursor: pointer;" class="new-ball-st" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${playWay}" data-bet-num="${i}${j}" data-name="${i}${j}"><strong class="pl">${i}${j}</strong></td>
        </c:forEach>
    </tr>
</c:forEach>
<tr>
    <c:forEach var="i" begin="1" end="8">
        <td style="cursor: pointer;" class="new-ball-st" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${playWay}" data-bet-num="${i}0" data-name="${i}0"><strong class="pl">${i}0</strong></td>
    </c:forEach>
</tr>
</tbody>