<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<%--@elvariable id="odds" type="Map<java.lang.String,so.wwb.gamebox.model.company.lottery.po.SiteLotteryOdd>"--%>
<%--@elvariable id="lottery" type="so.wwb.gamebox.model.company.lottery.po.SiteLotteryOdd"--%>
<div class="table-common">
    <table width="100%" border="1">
        <thead>
        <tr>
            <th colspan="3">冠军</th>
            <th colspan="3">亚军</th>
            <th colspan="3">季军</th>
            <th colspan="3">第四名</th>
            <th colspan="3">第五名</th>
        </tr>
        </thead>
        <tbody>
        <c:set var="champion" value="${oddMap['champion']}"/>
        <c:set var="runnerUp" value="${oddMap['runner_up']}"/>
        <c:set var="thirdRunner" value="${oddMap['third_runner']}"/>
        <c:set var="fourthPlace" value="${oddMap['fourth_place']}"/>
        <c:set var="fifthPlace" value="${oddMap['fifth_place']}"/>
        <c:forEach var="i" begin="1" end="10">
            <c:set var="number" value="0${i}"/>
            <c:if test="${i==10}">
                <c:set var="number" value="${i}"/>
            </c:if>

        <tr>
            <c:set var="lottery" value="${champion[number.toString()]}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td width="30" class="pointer"><strong>${lottery.betNum}</strong></td>
            <td class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td><input type="text" class="table-txt" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pk10Digital}" data-bet-num="${lottery.betNum}" data-name="冠军-${lottery.betNum}"/></td>

            <c:set var="lottery" value="${runnerUp[number.toString()]}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td width="30" class="pointer"><strong>${lottery.betNum}</strong></td>
            <td class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td><input type="text" class="table-txt" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pk10Digital}" data-bet-num="${lottery.betNum}" data-name="亚军-${lottery.betNum}"/></td>

            <c:set var="lottery" value="${thirdRunner[number.toString()]}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td width="30" class="pointer"><strong>${lottery.betNum}</strong></td>
            <td class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td><input type="text" class="table-txt" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pk10Digital}" data-bet-num="${lottery.betNum}" data-name="季军-${lottery.betNum}"/></td>

            <c:set var="lottery" value="${fourthPlace[number.toString()]}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td width="30" class="pointer"><strong>${lottery.betNum}</strong></td>
            <td class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td><input type="text" class="table-txt" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pk10Digital}" data-bet-num="${lottery.betNum}" data-name="第四名-${lottery.betNum}"/></td>

            <c:set var="lottery" value="${fifthPlace[number.toString()]}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td width="30" class="pointer"><strong>${lottery.betNum}</strong></td>
            <td class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td><input type="text" class="table-txt" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pk10Digital}" data-bet-num="${lottery.betNum}" data-name="第五名-${lottery.betNum}"/></td>
        </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
