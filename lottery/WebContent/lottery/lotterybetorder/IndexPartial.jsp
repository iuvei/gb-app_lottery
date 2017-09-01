<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--@elvariable id="command" type="so.wwb.gamebox.model.master.lottery.vo.LotteryBetOrderListVo"--%>
<%@ include file="/include/include.inc.jsp" %>
<div class="eveb_amount fl">
    当前投注额<span id="pageMoney">${soulFn:formatCurrency(allBetAmount)}</span>元，
    总投注额<span id="totalMoney">0</span>元，
    当前派彩<span id="pageWinOrLoseMoney">${soulFn:formatCurrency(allPayout)}</span>元，
    总派彩<span id="totalWinOrLoseMoney">0</span>元
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
            <td>${dicts.lottery.lottery_play[p.playCode]}-${dicts.lottery.lottery_betting[p.betCode]}</td>
            <td>${p.betNum}</td>
            <td>${p.betAmount}</td>
            <c:set var="allBetAmount" value="${allBetAmount+p.betAmount}"></c:set>
            <td>${p.odd}</td>
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
            <c:set var="allPayout" value="${allPayout+p.payout}"></c:set>
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
   <%-- <tr>
        <td colspan="12">

        </td>
    </tr>--%>
    </tbody>
</table>
<script src="${resRoot}/themes/default/js/jquery.min.js?v=${rcVersion}"></script>
<script type="text/javascript">
    $(document).ready(function () {
        fetchProfit();

    });
    function fetchProfit() {
        var data = $("#lottery-bet-order-form").serialize();
        $.ajax({
            type: "post",
            url: root + '/lotteryBetOrder/fetchProfit.html',
            data:data,
            dataType:'json',
            success: function (data) {
                $("#totalMoney").text(data.betamount);
                $("#totalWinOrLoseMoney").text(data.profitloss);
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
            },
            beforeSend: function () {
                //parent.showLoading();
            },
            complete: function () {
                //parent.hideLoading();

            }
        });
    }
</script>

<%@include file="../../include/include.pagination.jsp"%>