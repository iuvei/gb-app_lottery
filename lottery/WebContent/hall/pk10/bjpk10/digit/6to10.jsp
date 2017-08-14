<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<div class="table-common">
    <table width="100%" border="1">
        <thead>
        <tr>
            <th colspan="3">第六名</th>
            <th colspan="3">第七名</th>
            <th colspan="3">第八名</th>
            <th colspan="3">第九名</th>
            <th colspan="3">第十名</th>
        </tr>
        </thead>
        <tbody>
        <c:set var="sixthPlace" value="${oddMap['sixth_place']}"/>
        <c:set var="seventhPlace" value="${oddMap['seventh_place']}"/>
        <c:set var="eighthPlace" value="${oddMap['eighth_place']}"/>
        <c:set var="ninthPlace" value="${oddMap['ninth_place']}"/>
        <c:set var="tenthPlace" value="${oddMap['tenth_place']}"/>
        <c:forEach var="i" begin="1" end="10">
            <c:set var="number" value="0${i}"/>
            <c:if test="${i==10}">
                <c:set var="number" value="${i}"/>
            </c:if>
        <tr>
            <c:set var="lottery" value="${sixthPlace[number.toString()]}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="第六名-${lottery.betNum}" width="30" class="pointer"><strong>${lottery.betNum}</strong></td>
            <td data-num="第六名-${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="第六名-${lottery.betNum}"><input type="text" class="table-txt" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pk10Digital}" data-bet-num="${lottery.betNum}" data-name="第六名-${lottery.betNum}"/></td>

            <c:set var="lottery" value="${seventhPlace[number.toString()]}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="第七名-${lottery.betNum}" width="30" class="pointer"><strong>${lottery.betNum}</strong></td>
            <td data-num="第七名-${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="第七名-${lottery.betNum}"><input type="text" class="table-txt" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pk10Digital}" data-bet-num="${lottery.betNum}" data-name="第七名-${lottery.betNum}"/></td>

            <c:set var="lottery" value="${eighthPlace[number.toString()]}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="第八名-${lottery.betNum}" width="30" class="pointer"><strong>${lottery.betNum}</strong></td>
            <td data-num="第八名-${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="第八名-${lottery.betNum}"><input type="text" class="table-txt" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pk10Digital}" data-bet-num="${lottery.betNum}" data-name="第八名-${lottery.betNum}"/></td>

            <c:set var="lottery" value="${ninthPlace[number.toString()]}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="第九名-${lottery.betNum}" width="30" class="pointer"><strong>${lottery.betNum}</strong></td>
            <td data-num="第九名-${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="第九名-${lottery.betNum}"><input type="text" class="table-txt" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pk10Digital}" data-bet-num="${lottery.betNum}" data-name="第九名-${lottery.betNum}"/></td>

            <c:set var="lottery" value="${tenthPlace[number.toString()]}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="第十名-${lottery.betNum}" width="30" class="pointer"><strong>${lottery.betNum}</strong></td>
            <td data-num="第十名-${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="第十名-${lottery.betNum}"><input type="text" class="table-txt" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pk10Digital}" data-bet-num="${lottery.betNum}" data-name="第十名-${lottery.betNum}"/></td>
        </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
