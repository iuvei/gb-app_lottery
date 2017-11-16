<%@ page import="so.wwb.gamebox.model.master.lottery.po.LotteryTransaction" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--@elvariable id="command" type="so.wwb.gamebox.model.master.lottery.vo.LotteryTransactionListVo"--%>
<%@ include file="/include/include.inc.jsp" %>
<table class="eveb_box eveb_table" id="dataTable">
    <c:set var="poType" value="<%= LotteryTransaction.class %>"></c:set>
    <thead>
    <tr role="row" class="bg-gray">
        <th style="width: 80px;">序号</th>
        <th style="width: 120px">
            类型
        </th>
        <th style="width: 120px">金额</th>
        <th style="width: 120px">余额</th>
        <th style="width: 150px">交易时间</th>
        <th>备注</th>
    </tr>
    </thead>
    <tbody>
    <c:if test="${empty command.result}">
        <td colspan="6" class="no-content_wrap" style="height: 200px;">
            <div>
                <i class="fa fa-exclamation-circle"></i> 暂无内容!
            </div>
        </td>
    </c:if>
    <c:forEach items="${command.result}" var="p" varStatus="status">
        <tr class="tab-detail">
            <td>${(command.paging.pageNumber-1)*command.paging.pageSize+(status.index+1)}</td>
            <td>${dicts.lottery.transaction_type[p.transactionType]}</td>
                <c:choose>
                    <c:when test="${p.transactionType==1 || p.transactionType==6}">
                        <td><font color="green">-${p.money}</font></td>
                    </c:when>
                    <c:when test="${p.transactionType==4}">
                        <td><font color="green">${p.money}</font></td>
                    </c:when>
                    <c:when test="${p.money lt 0}">
                        <td><font color="green">${p.money}</font></td>
                    </c:when>
                    <c:otherwise>
                        <td><font color="red">${p.money}</font></td>
                    </c:otherwise>
                </c:choose>

            <td>${p.balance}</td>
            <td>${soulFn:formatDateTz(p.transactionTime,DateFormat.DAY_SECOND, timeZone)}</td>
            <td>${p.memo}<c:if test="${not empty p.sourceId}">_${p.sourceId}</c:if></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<%@include file="../../include/include.pagination.jsp"%>