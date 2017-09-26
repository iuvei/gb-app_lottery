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
    <div class="zs_list">
        <h2>高频彩</h2>
        <ul>
                <c:forEach items="${high}" var="h" varStatus="status">
                    <li>
                        <div class="p-img fl"><img src="${resRoot}/themes/default/img/${h.code}.png"></div>
                        <div class="p-url fl">
                            <h3>${dicts.lottery.lottery[h.code]}</h3>
                            <a href="javascript:void(0)" onclick="goZst('${h.code}.html?dataId=shuju1')">基本走势</a>
                            <a href="javascript:void(0)" onclick="goZst('${h.code}.html?dataId=shuju2')">K线图</a>
                            <a href="javascript:void(0)" onclick="goZst('${h.code}.html?dataId=shuju3')">直方图</a>
                            <a href="javascript:void(0)" onclick="goZst('${h.code}.html?dataId=shuju1')">统计遗漏</a>
                            <a href="javascript:void(0)" onclick="goZst('${h.code}.html?dataId=shuju5')">历史开奖数据</a>
                        </div>
                    </li>
                </c:forEach>
        </ul>
    </div>
    <div class="clear"></div>
    <div class="zs_list" style="margin-top:0px;">
        <h2>低频彩</h2>
        <ul>
            <c:forEach items="${low}" var="l" varStatus="status">
            <li>
                <div class="p-img fl"><img src="${resRoot}/themes/default/img/${l.code}.png"></div>
                <div class="p-url fl">
                    <h3>${dicts.lottery.lottery[l.code]}</h3>
                    <a href="javascript:void(0)" onclick="goZst('${l.code}.html?dataId=shuju1')">基本走势</a>
                    <a href="javascript:void(0)" onclick="goZst('${l.code}.html?dataId=shuju2')">K线图</a>
                    <a href="javascript:void(0)" onclick="goZst('${l.code}.html?dataId=shuju3')">直方图</a>
                    <a href="javascript:void(0)" onclick="goZst('${l.code}.html?dataId=shuju1')">统计遗漏</a>
                    <a href="javascript:void(0)" onclick="goZst('${l.code}.html?dataId=shuju5')">历史开奖数据</a>
                </div>
            </li>
            </c:forEach>
        </ul>
    </div>
<%@ include file="/include/include.js.jsp" %>
<script type="text/javascript">
    $(function () {
        $('div.loader', parent.document).remove();
    })
    function goZst(url) {
        if ($('div.loader', document).length == 0) {
            var src = resRoot + '/images/tail-spin.svg';
            var content = '<div class="loader"><img src="' + src + '" width="30"><span>载入中...</span></div>';
            $('body',document).append(content);
        }
        var url = root + '/lotteryTrendChart/queryLotteryTrend/'+url;
        window.location.href = url;
    }

</script>

</body>
</html>