<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<tbody>
    <c:forEach var="j" begin="1" end="9">
        <tr>
            <td style="cursor: pointer;">${j}</td>
            <td>
                <input type="checkbox" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${playWay}" data-bet-num="${j}" data-name="${j}"/>
            </td>
            <c:forEach var="i" begin="1" end="7">

                <td style="cursor: pointer;">${i}${j}</td>
                <td>
                    <input type="checkbox" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${playWay}" data-bet-num="${i}${j}" data-name="${i}${j}"/>
                </td>
            </c:forEach>
        </tr>
    </c:forEach>
    <tr>
        <c:forEach var="i" begin="1" end="8">
            <td style="cursor: pointer;">${i}0</td>
            <td>
                <input type="checkbox" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${playWay}" data-bet-num="${i}0" data-name="${i}0">
            </td>
        </c:forEach>
    </tr>
</tbody>