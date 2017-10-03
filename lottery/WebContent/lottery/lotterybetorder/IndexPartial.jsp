<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--@elvariable id="command" type="so.wwb.gamebox.model.master.lottery.vo.LotteryBetOrderListVo"--%>
<%@ include file="/include/include.inc.jsp" %>
<div class="eveb_amount fl">
    <c:set var="allBetAmount" value="${0}"></c:set>
    <c:set var="allPayout" value="${0}"></c:set>
    <c:if test="${not empty command.result}">
        <c:forEach items="${command.result}" var="p" varStatus="status">
            <c:set var="allBetAmount" value="${allBetAmount+p.betAmount}"></c:set>
            <c:set var="allPayout" value="${allPayout+p.payout}"></c:set>
        </c:forEach>
    </c:if>
    当前投注额<span id="pageMoney">${soulFn:formatCurrency(allBetAmount)}</span>元，
    总投注额<span id="totalMoney">0</span>元，
    当前派彩<span id="pageWinOrLoseMoney">${soulFn:formatCurrency(allPayout)}</span>元，
    总派彩<span id="totalWinOrLoseMoney">0</span>元,
    投注单量<span id="betCount">${command.paging.totalCount}</span>笔
</div>
<table class="eveb_box eveb_table" id="dataTable">
    <thead>
    <tr role="row" class="bg-gray">
        <th style="width: 80px">序号</th>
        <th>所属彩种</th>
        <th>注单号</th>
        <th>彩票期号</th>
        <th>投注玩法</th>
        <th>投注内容</th>
        <th>投注金额</th>
        <th>赔率</th>
        <th>派彩</th>
        <th>投注时间</th>
        <th>投注帐号</th>
        <th>状态</th>
    </tr>
    </thead>
    <tbody>
    <c:if test="${empty command.result}">
        <td colspan="12" class="no-content_wrap" style="height: 200px;">
            <div>
                <i class="fa fa-exclamation-circle"></i> 暂无内容!
            </div>
        </td>
    </c:if>
    <c:set var="allBetAmount" value="${0}"></c:set>
    <c:set var="allPayout" value="${0}"></c:set>
    <c:forEach items="${command.result}" var="p" varStatus="status">
        <tr class="tab-detail">
            <td>${(command.paging.pageNumber-1)*command.paging.pageSize+(status.index+1)}</td>
            <td>${dicts.lottery.lottery[p.code]}</td>
            <td>${p.id}</td>
            <td>${p.expect}</td>
            <td>${dicts.lottery.lottery_betting[p.betCode]}-${dicts.lottery.lottery_play[p.playCode]}</td>
            <td>${p.betNum}</td>
            <td>${p.totalBetAmount}</td>
            <td>
                <c:choose>
                    <c:when test="${p.playCode eq 'keno_selection_five'}">
                        中5@${p.odd} 中4@${p.odd2} 中3@${p.odd3}
                    </c:when>
                    <c:when test="${p.playCode eq 'keno_selection_four'}">
                        中4@${p.odd} 中3@${p.odd2} 中2@${p.odd3}
                    </c:when>
                    <c:when test="${p.playCode eq 'keno_selection_three'}">
                        中3@${p.odd} 中2@${p.odd2}
                    </c:when>
                    <c:when test="${p.playCode eq 'lhc_three_in_two'}">
                        中二@${p.odd} 中三@${p.odd2}
                    </c:when>
                    <c:when test="${p.playCode eq 'lhc_two_in_special'}">
                        中特@${p.odd} 中二@${p.odd2}
                    </c:when>
                    <c:otherwise>
                        ${p.odd}
                    </c:otherwise>
                </c:choose>
            </td>
            <td>
                <c:choose>
                    <c:when test="${p.payout>0}">
                        <font color="red">
                            ${p.payout}
                        </font>
                    </c:when>
                    <c:otherwise>
                        ${p.payout}
                    </c:otherwise>
                </c:choose>
            </td>
            <td>${soulFn:formatDateTz(p.betTime, DateFormat.DAY_SECOND,timeZone)}</td>
            <td>${p.username}</td>
            <td>
                <c:if test="${p.status=='1'}">
                    <span class="label label-orange">${dicts.lottery.order_status[p.status]}</span>
                </c:if>
                <c:if test="${p.status=='2'}">
                    <span class="label label-green">${dicts.lottery.order_status[p.status]}</span>
                </c:if>
                <c:if test="${p.status=='3'}">
                    <span class="label label-danger">${dicts.lottery.order_status[p.status]}</span>
                </c:if>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<%@include file="../../include/include.pagination.jsp"%>