<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<%--@elvariable id="odds" type="Map<java.lang.String,so.wwb.gamebox.model.company.lottery.po.SiteLotteryOdd>"--%>
<%--@elvariable id="lottery" type="so.wwb.gamebox.model.company.lottery.po.SiteLotteryOdd"--%>
<table width="100%" border="1">
    <thead>
    <tr>
        <th colspan="15">${playGroupName}</th>
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
        <th width="47">号码</th>
        <th width="56">赔率</th>
        <th>金额</th>
        <th width="47">号码</th>
        <th width="56">赔率</th>
        <th>金额</th>
    </tr>
    </thead>

    <tbody>
    <c:forEach begin="0" end="9" var="i">
        <c:if test="${i%5==0}">
            <tr>
        </c:if>
        <c:set var="lottery" value="${odds[i.toString()]}"/>
        <c:set var="odd" value="${lottery.odd}"/>
        <td data-num="${playGroupName}-${i}" class="pointer"><strong>${i}</strong></td>
        <td data-num="${playGroupName}-${i}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
        <td data-num="${playGroupName}-${i}"><input type="text" class="table-txt" data-bet-code="${lottery.betCode}" data-play="${oneDigital}" data-bet-num="${lottery.betNum}" data-odds="${odd}" data-name="${playGroupName}-${i}"/></td>

        <c:if test="${(i%5 == 4)}">
            </tr>
        </c:if>
    </c:forEach>
    </tbody>
</table>