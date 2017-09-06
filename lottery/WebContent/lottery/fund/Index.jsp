<%@ page import="so.wwb.gamebox.model.master.lottery.po.LotteryTransaction" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>资金记录</title>
    <%@ include file="/include/include.head.jsp" %>
    <link rel="stylesheet" type="text/css" href="${resRoot}/themes/default/member/css/reset.css">
    <link rel="stylesheet" type="text/css" href="${resRoot}/themes/default/member/css/hpn-common.css">
    <link rel="stylesheet" type="text/css" href="${resRoot}/themes/default/member/css/index.css">
    <link rel="stylesheet" type="text/css" href="${resRoot}/themes/default/member/css/global.css">
</head>

<body>
<form action="${root}/lotteryTransaction/list.html" id="lottery-bet-order-form">
<div class="help_r_main">
    <div class="eveb_content">
        <h2>
            <div class="eveb_search eveb_search_h2">
                类型：
                <select name="search.transactionType">
                    <option value="">所有</option>
                    <c:forEach var="lot" items="${transactionTypes}">
                        <option value="${lot.key}" ${command.search.transactionType==lot.key?'selected':''}>
                        ${dicts.lottery.transaction_type[lot.key]}
                        </option>
                    </c:forEach>
                </select>
                交易时间：
                <input name="search.queryStartDate" id="starttime" style="height: 28px;width: 120px;"
                       value="${soulFn:formatDateTz(command.search.queryStartDate, DateFormat.DAY_SECOND,timeZone)}"
                       type="text" class="suminp"> -
                <input name="search.queryEndDate" style="height: 28px;width: 120px;"
                       id="endtime" type="text"
                       value="${soulFn:formatDateTz(command.search.queryEndDate, DateFormat.DAY_SECOND,timeZone)}"
                       class="suminp">
                <a href="javascript:void(0)" class="button_small button_1" id="queryFund">筛选</a>
                <a href="javascript:void(0)" class="button_small button_4" data-searchid="1">今日</a>
                <a href="javascript:void(0)" class="button_small button_4" data-searchid="3">3天</a>
                <a href="javascript:void(0)" class="button_small button_4" data-searchid="7">本周</a>
            </div>
        </h2>
        <div id="search-list-container">
            <%@include file="IndexPartial.jsp"%>
        </div>
    </div>
</div>
</form>
<%@ include file="/include/include.js.jsp" %>
<script src="${resRoot}/js/plugin/laydate/laydate.js?v=${rcVersion}"></script>
<script src="${resRoot}/themes/default/member/js/global.js?v=${rcVersion}"></script>

<script type="text/javascript">
    curl(['site/bet/Index'], function(Page) {
        page = new Page();
    });
</script>
</body>
</html>
