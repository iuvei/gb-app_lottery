<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<%--@elvariable id="odds" type="Map<java.lang.String,so.wwb.gamebox.model.company.lottery.po.SiteLotteryOdd>"--%>
<%--@elvariable id="lottery" type="so.wwb.gamebox.model.company.lottery.po.SiteLotteryOdd"--%>
<tr>
    <td class="pointer"><strong>${playGroupName}</strong></td>

    <c:set var="lottery" value="${odds['大']}"/>
    <c:set var="odd" value="${lottery.odd}"/>
    <td data-num="${playGroupName}-${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
    <td data-num="${playGroupName}-${lottery.betNum}"><input type="text" class="table-txt" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pk10BigSmall}" data-bet-num="大" data-name="${playGroupName}-大"/></td>

    <c:set var="lottery" value="${odds['小']}"/>
    <c:set var="odd" value="${lottery.odd}"/>
    <td data-num="${playGroupName}-${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
    <td data-num="${playGroupName}-${lottery.betNum}"><input type="text" class="table-txt" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pk10BigSmall}" data-bet-num="小" data-name="${playGroupName}-小"/></td>

    <c:set var="lottery" value="${odds['单']}"/>
    <c:set var="odd" value="${lottery.odd}"/>
    <td data-num="${playGroupName}-${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
    <td data-num="${playGroupName}-${lottery.betNum}"><input type="text" class="table-txt" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pk10SingleDouble}" data-bet-num="单" data-name="${playGroupName}-单"/></td>

    <c:set var="lottery" value="${odds['双']}"/>
    <c:set var="odd" value="${lottery.odd}"/>
    <td data-num="${playGroupName}-${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
    <td data-num="${playGroupName}-${lottery.betNum}"><input type="text" class="table-txt" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pk10SingleDouble}" data-bet-num="双" data-name="${playGroupName}-双"/></td>
    <td class="pointer" colspan="4">&nbsp;</td>
</tr>
