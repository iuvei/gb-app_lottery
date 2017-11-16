<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--@elvariable id="command" type="so.wwb.gamebox.model.master.lottery.vo.LotteryBetOrderListVo"--%>
<%@ include file="/include/include.inc.jsp" %>
<div class="eveb_amount fl">
    <c:set var="allBetAmount" value="${0}"></c:set>
    <c:set var="allPayout" value="${0}"></c:set>
    <c:if test="${not empty command.result}">
        <c:forEach items="${command.result}" var="p" varStatus="status">
            <c:if test="${p.status !=3}">
                <c:set var="allBetAmount" value="${allBetAmount+p.betAmount}"></c:set>
                <c:set var="allPayout" value="${allPayout+p.payout}"></c:set>
                <c:set var="allRebateAmount" value="${allRebateAmount+p.rebateAmount}"></c:set>
            </c:if>
        </c:forEach>
    </c:if>
    总注单量&nbsp;&nbsp;<span id="betCount">${command.paging.totalCount}</span>注，
    总投注&nbsp;&nbsp;<span id="totalMoney">0</span>元，
    总返点&nbsp;&nbsp;<span id="totalRebateAmount">0</span>元，
    总派彩&nbsp;&nbsp;<span id="totalWinOrLoseMoney">0</span>元
</div>
<table class="eveb_box eveb_table" id="dataTable">
    <thead>
    <tr role="row" class="bg-gray">
        <th style="width: 3%">序号</th>
        <th style="width: 7%">所属彩种</th>
        <th style="width: 5%">注单号</th>
        <th style="width: 7%">彩票期号</th>
        <th style="width: 12%">玩法</th>
        <th style="width: 20%">投注内容</th>
        <th style="width: 4%">倍数</th>
        <th style="width: 4%">奖金模式</th>
        <th style="width: 5%">投注</th>
        <th style="width: 5%">返点</th>
        <th style="width: 5%">赔率|奖金</th>
        <th style="width: 4%">派彩</th>
        <th style="width: 10%">投注时间</th>
        <th style="width: 5%">投注帐号</th>
        <th style="width: 5%">状态</th>
    </tr>
    </thead>
    <tbody>
    <c:if test="${empty command.result}">
        <td colspan="15" class="no-content_wrap" style="height: 200px;">
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
            <td title="${dicts.lottery.lottery_betting[p.betCode]}-${dicts.lottery.lottery_play[p.playCode]}">${dicts.lottery.lottery_betting[p.betCode]}-${dicts.lottery.lottery_play[p.playCode]}</td>
            <td title="${p.betNum}">${p.betNum}</td>
            <td><c:if test="${empty p.multiple}">1</c:if>
                <c:if test="${not empty p.multiple}">${p.multiple}</c:if>
            </td>
            <td><c:if test="${empty p.bonusModel || p.bonusModel eq 1}">元</c:if>
                <c:if test="${p.bonusModel eq 10}">角</c:if>
                <c:if test="${p.bonusModel eq 100}">分</c:if>
            </td>
            <td>${p.betAmount}</td>
            <td>${p.rebateAmount}</td>
            <c:choose>
                <c:when test="${p.playCode eq 'keno_selection_five'}">
                    <c:set var="pOdd" value="中5@${p.odd} 中4@${p.odd2} 中3@${p.odd3}"/>
                </c:when>
                <c:when test="${p.playCode eq 'keno_selection_four'}">
                    <c:set var="pOdd" value="中4@${p.odd} 中3@${p.odd2} 中2@${p.odd3}"/>
                </c:when>
                <c:when test="${p.playCode eq 'keno_selection_three'}">
                    <c:set var="pOdd" value="中3@${p.odd} 中2@${p.odd2}"/>
                </c:when>
                <c:when test="${p.playCode eq 'lhc_three_in_two'}">
                    <c:set var="pOdd" value="中二@${p.odd} 中三@${p.odd2}"/>
                </c:when>
                <c:when test="${p.playCode eq 'lhc_two_in_special'}">
                    <c:set var="pOdd" value="中特@${p.odd} 中二@${p.odd2}"/>
                </c:when>
                <c:when test="${p.betCode eq 'ssc_sanxing_zhixuan_qszh' || p.betCode eq 'ssc_sanxing_zhixuan_hszh'}">
                    <c:set var="pOdd" value="三星@${p.odd} 二星@${p.odd2} 一星@${p.odd3}"/>
                </c:when>
                <c:when test="${p.betCode eq 'ssc_sanxing_zuxuan_qshhzx' || p.betCode eq 'ssc_sanxing_zuxuan_hshhzx'
                    || p.betCode eq 'ssc_sanxing_zuxuan_qszxhz' || p.betCode eq 'ssc_sanxing_zuxuan_hszxhz'
                    || p.betCode eq 'ssc_sanxing_zuxuan_qszxbd' || p.betCode eq 'ssc_sanxing_zuxuan_hszxbd'
                    || p.betCode eq 'pl3_sanxing_zuxuan_hhzx' || p.betCode eq 'pl3_sanxing_zuxuan_zxhz'}">
                    <c:set var="pOdd" value="组三@${p.odd} 组六@${p.odd2}"/>
                </c:when>
                <c:otherwise>
                    <c:set var="pOdd" value="${p.odd}"/>
                </c:otherwise>
            </c:choose>
            <td title="${pOdd}">${pOdd}</td>
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
<div class="eveb_amount fl" style="width: 100%">
    <c:set var="allBetAmount" value="${0}"></c:set>
    <c:set var="allPayout" value="${0}"></c:set>
    <c:set var="betCount" value="${0}"></c:set>
    <c:if test="${not empty command.result}">
        <c:forEach items="${command.result}" var="p" varStatus="status">
            <c:if test="${p.status !=3}">
                <c:set var="allBetAmount" value="${allBetAmount+p.betAmount}"></c:set>
                <c:set var="allPayout" value="${allPayout+p.payout}"></c:set>
                <c:set var="allRebateAmount" value="${allRebateAmount+p.rebateAmount}"></c:set>
            </c:if>
            <c:set var="betCount" value="${betCount+1}"></c:set>
        </c:forEach>
    </c:if>
    小计：
    注单量&nbsp;&nbsp;<span id="betCount">${betCount}</span>注，
    投注&nbsp;&nbsp;<span id="pageMoney">${fn:replace(soulFn:formatCurrency(allBetAmount),",","")}</span>元，
    返点&nbsp;&nbsp;<span id="pageRebateAmount">${fn:replace(soulFn:formatCurrency(allRebateAmount),",","")}</span>元，
    派彩&nbsp;&nbsp;<span id="pageWinOrLoseMoney">${fn:replace(soulFn:formatCurrency(allPayout),",","")}</span>元
</div>
<%@include file="../../include/include.pagination.jsp"%>