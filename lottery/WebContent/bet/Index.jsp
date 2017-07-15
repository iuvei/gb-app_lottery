<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
<div class="help_r_main">
    <div class="eveb_content">
        <h2>
            <div class="eveb_search eveb_search_h2">
                <input type="hidden" name="pageIndex" value="1"/>
                彩种：
                <select name="code">
                    <option value="">所有</option>
                    <c:forEach var="lot" items="${lotterys}">
                        <option value="${lot.key}">${dicts.lottery.lottery[lot.key]}</option>
                    </c:forEach>
                </select>
                玩法：
                <select name="search.playCode">
                    <option value="">所有</option>
                    <c:forEach var="lot" items="${lotteryPlays}">
                        <option value="${lot.key}">${dicts.lottery.lottery_play[lot.key]}</option>
                    </c:forEach>
                </select>
                状态：
                <select name="status">
                    <option value="">所有</option>
                    <c:forEach var="lot" items="${orderStatus}">
                        <option value="${lot.key}">${dicts.lottery.order_status[lot.key]}</option>
                    </c:forEach>
                </select>
                　起止时间：
                <input name="starttime" id="starttime"
                       value="2017-03-29 00:00"
                       type="text" size="11" class="suminp"
                       onclick="laydate({istime: true, format: 'YYYY-MM-DD hh:mm'})"> -
                <input name="endtime"
                       id="endtime" type="text"
                       size="11"
                       value="2017-03-30 00:00"
                       class="suminp"
                       onclick="laydate({istime: true, format: 'YYYY-MM-DD hh:mm'})">
                <a href="javascript:void(0)" class="button_small button_1" onclick="shaixuan()">筛选</a>
                <a href="javascript:void(0)" class="button_small button_4" onclick="searchday(1)">今日</a>
                <a href="javascript:void(0)" class="button_small button_4" onclick="searchday(3)">3天</a>
                <a href="javascript:void(0)" class="button_small button_4" onclick="searchday(7)">本周</a>
            </div>
        </h2>
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
            <c:set var="allBetAmount" value="${0}"></c:set>
            <c:set var="allPayout" value="${0}"></c:set>
            <c:forEach items="${betOrders}" var="p" varStatus="status">
                <tr class="tab-detail">
                    <td>${(command.paging.pageNumber-1)*command.paging.pageSize+(status.index+1)}</td>
                    <td>${dicts.lottery.lottery[p.code]}</td>
                    <td>${p.id}</td>
                    <td>${p.expect}</td>
                    <td>${dicts.lottery.lottery_play[p.playCode]}</td>
                    <td>${p.betNum}</td>
                    <td>${p.betAmount}</td>
                    <c:set var="allBetAmount" value="${allBetAmount+p.betAmount}"></c:set>
                    <td>${p.odd}</td>
                    <td>${p.payout}</td>
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
            </tbody>
        </table>
        <div class="eveb_amount fl">
            当前小计<span id="pageMoney">${soulFn:formatCurrency(allBetAmount)}</span>元，
            总计<span id="totalMoney">0</span>元，
            当前盈亏<span id="pageWinOrLoseMoney">${soulFn:formatCurrency(allPayout)}</span>元，
            总盈亏<span id="totalWinOrLoseMoney">0</span>元
        </div>
        <div class="eveb_page fr">
        </div>
    </div>
</div>

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
