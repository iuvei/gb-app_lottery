<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<%--@elvariable id="odds" type="Map<java.lang.String,so.wwb.gamebox.model.company.lottery.po.SiteLotteryOdd>"--%>
<%--@elvariable id="lottery" type="so.wwb.gamebox.model.company.lottery.po.SiteLotteryOdd"--%>
<table width="100%" border="1">
    <thead>
    <tr>
        <th colspan="9">${playGroupName}</th>
    </tr>
    <tr>
        <th width="47">号码</th>
        <th width="56">赔率</th>
        <th>金额</th>
        <th width="47">号码</th>
        <th width="56">赔率</th>
        <th>金额</th>
        <th width="47">号码</th>
        <th width="56">赔率</th>
        <th>金额</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <c:set var="lottery" value="${odds['大']}"/>
        <c:set var="odd" value="${lottery.odd}"/>
        <td data-num="${playGroupName}-${lottery.betNum}" class="pointer"><strong>大</strong></td>
        <td data-num="${playGroupName}-${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
        <td data-num="${playGroupName}-${lottery.betNum}"><input type="text" class="table-txt" data-name="${playGroupName}-大" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${oneBigSmall}" data-bet-num="${lottery.betNum}"/></td>

        <c:set var="lottery" value="${odds['单']}"/>
        <c:set var="odd" value="${lottery.odd}"/>
        <td data-num="${playGroupName}-${lottery.betNum}" class="pointer"><strong>单</strong></td>
        <td data-num="${playGroupName}-${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
        <td data-num="${playGroupName}-${lottery.betNum}"><input type="text" class="table-txt" data-name="${playGroupName}-单" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${oneSingleDouble}" data-bet-num="${lottery.betNum}"></td>

        <c:set var="lottery" value="${odds['质']}"/>
        <c:set var="odd" value="${lottery.odd}"/>
        <td data-num="${playGroupName}-${lottery.betNum}" class="pointer"><strong>质</strong></td>
        <td data-num="${playGroupName}-${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
        <td data-num="${playGroupName}-${lottery.betNum}"><input type="text" class="table-txt" data-name="${playGroupName}-质" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${onePrimeCombined}" data-bet-num="${lottery.betNum}"></td>
    </tr>
    <tr>
        <c:set var="lottery" value="${odds['小']}"/>
        <c:set var="odd" value="${lottery.odd}"/>
        <td data-num="${playGroupName}-${lottery.betNum}" class="pointer"><strong>小</strong></td>
        <td data-num="${playGroupName}-${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
        <td data-num="${playGroupName}-${lottery.betNum}"><input type="text" class="table-txt" data-name="${playGroupName}-小" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${oneBigSmall}" data-bet-num="${lottery.betNum}"></td>

        <c:set var="lottery" value="${odds['双']}"/>
        <c:set var="odd" value="${lottery.odd}"/>
        <td data-num="${playGroupName}-${lottery.betNum}" class="pointer"><strong>双</strong></td>
        <td data-num="${playGroupName}-${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
        <td data-num="${playGroupName}-${lottery.betNum}"><input type="text" class="table-txt" data-name="${playGroupName}-双" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${oneSingleDouble}" data-bet-num="${lottery.betNum}"></td>

        <c:set var="lottery" value="${odds['合']}"/>
        <c:set var="odd" value="${lottery.odd}"/>
        <td data-num="${playGroupName}-${lottery.betNum}" class="pointer"><strong>合</strong></td>
        <td data-num="${playGroupName}-${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
        <td data-num="${playGroupName}-${lottery.betNum}"><input type="text" class="table-txt" data-name="${playGroupName}-合" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${onePrimeCombined}" data-bet-num="${lottery.betNum}"></td>
    </tr>
    </tbody>
</table>