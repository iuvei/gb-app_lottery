<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>

<table class="touzhuArea touzhuArea_pm">
    <thead>
    <tr>
        <th colspan="3" style="width: 100%">${playGroupName}</th>
    </tr>
    <tr>
        <th>号</th>
        <th>赔率</th>
        <th>金额</th>
    </tr>
    </thead>
<tbody>
<c:forEach var="i" begin="1" end="10">
    <c:set var="number" value="0${i}"/>
    <c:if test="${i==10}">
        <c:set var="number" value="${i}"/>
    </c:if>
    <c:set var="lottery" value="${odds[number.toString()]}"/>
    <c:set var="odd" value="${lottery.odd}"/>
    <tr>
        <td data-num="${playGroupName}-${lottery.betNum}" style="cursor: pointer;"><span class="number num${i}"></span></td>
        <td data-num="${playGroupName}-${lottery.betNum}" class="pl pl-color" style="cursor: pointer;">${odd}</td>
        <td data-num="${playGroupName}-${lottery.betNum}">
            <input class="amount-input" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pk10Digital}" data-bet-num="${lottery.betNum}" data-name="${playGroupName}-${lottery.betNum}" type="text"/>
        </td>
    </tr>
</c:forEach>
<c:set var="lottery" value="${odds['大']}"/>
<c:set var="odd" value="${lottery.odd}"/>
<tr>
    <td data-num="${playGroupName}-${lottery.betNum}" style="cursor: pointer;"><span class="">大</span></td>
    <td data-num="${playGroupName}-${lottery.betNum}" class="pl pl-color" style="cursor: pointer;">${odd}</td>
    <td data-num="${playGroupName}-${lottery.betNum}">
        <input class="amount-input" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pk10BigSmall}" data-bet-num="大" data-name="${playGroupName}-大" type="text"/>
    </td>
</tr>
<c:set var="lottery" value="${odds['小']}"/>
<c:set var="odd" value="${lottery.odd}"/>
<tr>
    <td data-num="${playGroupName}-${lottery.betNum}" style="cursor: pointer;"><span class="">小</span></td>
    <td data-num="${playGroupName}-${lottery.betNum}" class="pl pl-color" style="cursor: pointer;">${odd}</td>
    <td data-num="${playGroupName}-${lottery.betNum}">
        <input class="amount-input" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pk10BigSmall}" data-bet-num="小" data-name="${playGroupName}-小" type="text"/>
    </td>
</tr>
<c:set var="lottery" value="${odds['单']}"/>
<c:set var="odd" value="${lottery.odd}"/>
<tr>
    <td data-num="${playGroupName}-${lottery.betNum}" style="cursor: pointer;"><span class="">单</span></td>
    <td data-num="${playGroupName}-${lottery.betNum}" class="pl pl-color" style="cursor: pointer;">${odd}</td>
    <td data-num="${playGroupName}-${lottery.betNum}">
        <input class="amount-input" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pk10SingleDouble}" data-bet-num="单" data-name="${playGroupName}-单" type="text"/>
    </td>
</tr>
<c:set var="lottery" value="${odds['双']}"/>
<c:set var="odd" value="${lottery.odd}"/>
<tr>
    <td data-num="${playGroupName}-${lottery.betNum}" style="cursor: pointer;"><span class="">双</span></td>
    <td data-num="${playGroupName}-${lottery.betNum}" class="pl pl-color" style="cursor: pointer;">${odd}</td>
    <td data-num="${playGroupName}-${lottery.betNum}">
        <input class="amount-input" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pk10SingleDouble}" data-bet-num="双" data-name="${playGroupName}-双" type="text"/>
    </td>
</tr>
</tbody>

</table>