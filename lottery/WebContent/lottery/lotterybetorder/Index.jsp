<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--@elvariable id="command" type="so.wwb.gamebox.model.master.lottery.vo.LotteryBetOrderListVo"--%>
<%@ include file="/include/include.inc.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>投注记录</title>
    <%@ include file="/include/include.head.jsp" %>
    <link rel="stylesheet" type="text/css" href="${resRoot}/themes/default/member/css/reset.css">
    <link rel="stylesheet" type="text/css" href="${resRoot}/themes/default/member/css/hpn-common.css">
    <link rel="stylesheet" type="text/css" href="${resRoot}/themes/default/member/css/index.css">
    <link rel="stylesheet" type="text/css" href="${resRoot}/themes/default/member/css/global.css">
</head>

<body>
<form action="${root}/lotteryBetOrder/list.html" id="lottery-bet-order-form">
    <input type="hidden" name="search.userId" value="${command.search.userId}">
<div class="help_r_main">
    <div class="eveb_content">
        <h2>
            <div class="eveb_search eveb_search_h2">
                彩种：
                <select name="search.code" onchange="gotoPage(1,this)">
                    <option value="">所有</option>
                    <c:forEach var="lot" items="${lotterys}">
                            <option value="${lot.key}" ${command.search.code==lot.key?'selected':''}>${dicts.lottery.lottery[lot.key]}</option>
                    </c:forEach>
                </select>
                状态：
                <select name="search.status" onchange="gotoPage(1,this)">
                    <option value="">所有</option>
                    <c:forEach var="lot" items="${orderStatus}">
                        <option value="${lot.key}" ${command.search.status==lot.key?'selected':''}>${dicts.lottery.order_status[lot.key]}</option>
                    </c:forEach>
                </select>
                　投注时间：
                <input name="search.queryStartDate" id="starttime" style="height: 28px;width: 120px;"
                       value="${soulFn:formatDateTz(command.search.queryStartDate, DateFormat.DAY_SECOND,timeZone)}"
                       type="text" class="suminp"
                       onclick="laydate({istime: true, format: 'YYYY-MM-DD hh:mm:ss'})"> -
                <input name="search.queryEndDate" style="height: 28px;width: 120px;"
                       id="endtime" type="text"
                       value="${soulFn:formatDateTz(command.search.queryEndDate, DateFormat.DAY_SECOND,timeZone)}"
                       class="suminp"
                       onclick="laydate({istime: true, format: 'YYYY-MM-DD hh:mm:ss'})">
                <a href="javascript:void(0)" class="button_small button_1" onclick="query(this)">筛选</a>
                <a href="javascript:void(0)" class="button_small button_4" onclick="searchday(1)">今日</a>
                <a href="javascript:void(0)" class="button_small button_4" onclick="searchday(3)">3天</a>
                <a href="javascript:void(0)" class="button_small button_4" onclick="searchday(7)">本周</a>
            </div>
        </h2>
        <div id="search-list-container">
            <%@include file="IndexPartial.jsp"%>
        </div>


    </div>
</div>
<%--<soul:pagination cssClass="bdtop3"/>--%>
</form>
<%@ include file="/include/include.js.jsp" %>
<script src="${resRoot}/themes/default/member/framework/jquery.validate.min.js?v=${rcVersion}"></script>
<script src="${resRoot}/themes/default/member/laydate/laydate.js?v=${rcVersion}"></script>
<script src="${resRoot}/themes/default/member/js/validate.js?v=${rcVersion}"></script>
<script src="${resRoot}/themes/default/member/js/global.js?v=${rcVersion}"></script>
<script src="${resRoot}/themes/default/member/js/jquery.form.min.js?v=${rcVersion}"></script>
<script src="${resRoot}/themes/default/member/js/jquery.md5.js?v=${rcVersion}"></script>
<script src="${resRoot}/themes/default/member/js/clipboard.min.js?v=${rcVersion}"></script>
<script src="${resRoot}/themes/default/member/js/clipboard.min.js?v=${rcVersion}"></script>

<script src="${resRoot}/js/bet/Index.js?v=${rcVersion}"></script>

</body>
</html>
