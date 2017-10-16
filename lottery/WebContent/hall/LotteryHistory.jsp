<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>购彩大厅 | 所有彩票</title>
    <%@ include file="/include/include.head.jsp" %>
    <script src="${root}/message_<%=SessionManagerCommon.getLocale().toString()%>.js?v=${rcVersion}"></script>

</head>

<body>
<form action="${root}/lotteryResultHistory/queryLotteryResultByCode.html">
    <div id="gameContent">
        <div class="Single Resultt wid1">
            <div class="latyout layout at">
                <div class="tabs_ce at">
                    <ul>
                        <li class="lot-fre-type acti nob" data-subnav="0" name="top" id="lot_type_">
                            <a href="javascript:void(0)">全部彩种</a>
                        </li>
                        <c:if test="${not empty lotteryFrequencyType}">
                            <c:forEach var="type" items="${lotteryFrequencyType}" varStatus="vs">
                                <li class="lot-fre-type " data-subnav="${type.key}" id="lot_type_${type.key}">
                                    <a href="javascript:void(0)" data-type="${type.key}">${type.value.frequencyName}</a>
                                </li>
                            </c:forEach>
                        </c:if>
                        <%--<li class="lot-fre-type " data-subnav="7" id="lot_type_search">
                            <a href="javascript:void(0)" onclick="queryLotteryByFrequency('search')">开奖搜索</a>
                        </li>--%>
                    </ul>
                </div>
                <div id="subContent" class="kjjg">
                    <%@include file="result/AllLottery.jsp" %>
                </div>
            </div>
        </div><!--Single-->

    </div>
</form>
<%@ include file="/include/include.js.jsp" %>
<script type="text/javascript">
    curl(['site/hall/LotteryHistory'], function(Page) {
        page = new Page();
    });
</script>

</body>
</html>