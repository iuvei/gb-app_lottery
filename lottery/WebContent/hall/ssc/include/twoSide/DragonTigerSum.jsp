<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<%--@elvariable id="fiveSumOdd" type="Map<java.lang.String,so.wwb.gamebox.model.company.lottery.po.SiteLotteryOdd>"--%>
<%--@elvariable id="lottery" type="so.wwb.gamebox.model.company.lottery.po.SiteLotteryOdd"--%>
<table width="100%" border="1">
    <thead>
    <tr>
        <th colspan="9">总和</th>
    </tr>
    <tr>
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
        <c:set var="lottery" value="${fiveSumOdd['总大']}"/>
        <c:set var="odd" value="${lottery.odd}"/>
        <td data-num="${lottery.betNum}" class="pointer"><strong>总大</strong></td>
        <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
        <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="总和-${lottery.betNum}" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${fiveSumBigSmall}" data-bet-num="${lottery.betNum}"></td>

        <c:set var="lottery" value="${fiveSumOdd['总单']}"/>
        <c:set var="odd" value="${lottery.odd}"/>
        <td data-num="${lottery.betNum}" class="pointer"><strong>总单</strong></td>
        <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
        <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="总和-${lottery.betNum}" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${fiveSumSingleDouble}" data-bet-num="${lottery.betNum}"></td>
    </tr>

    <tr>
        <c:set var="lottery" value="${fiveSumOdd['总小']}"/>
        <c:set var="odd" value="${lottery.odd}"/>
        <td data-num="${lottery.betNum}" class="pointer"><strong>总小</strong></td>
        <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
        <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="总和-${lottery.betNum}" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${fiveSumBigSmall}" data-bet-num="${lottery.betNum}"></td>

        <c:set var="lottery" value="${fiveSumOdd['总双']}"/>
        <c:set var="odd" value="${lottery.odd}"/>
        <td data-num="${lottery.betNum}" class="pointer"><strong>总双</strong></td>
        <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
        <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="总和-${lottery.betNum}" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${fiveSumSingleDouble}" data-bet-num="${lottery.betNum}"></td>
    </tr>
    </tbody>
</table>