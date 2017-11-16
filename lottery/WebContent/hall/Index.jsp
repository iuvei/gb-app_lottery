<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>购彩大厅</title>
    <%@ include file="/include/include.head.jsp" %>
    <style>
        body {overflow: hidden;}
    </style>
</head>

<body>
<div class="menu_left">
    <div class="list_menu">
        <ul>
            <li class="show">
                <h2>
                    <a href="javascript:void(0)" data-url='/hall/lottery.html'>
                        <span>
                            <div class="pict"><var><img src="${resRoot}/themes/default/img/ico3.png"></var></div>
                        </span>
                        <b>购彩大厅</b>
                    </a>
                </h2>
                <a class="Refresh"></a>
            </li>
            <li class="show">
                <h2 class="open">
                    <span>
                        <div class="pict"><var><img src="${resRoot}/themes/default/img/ico5.png"></var></div>
                    </span>
                    <b>热门彩种</b>
                    <i class="show"></i>
                </h2>
                <div class="down" style="display: block;">
                    <c:if test="${not empty hot}">
                        <c:forEach items="${hot}" var="hot" varStatus="status">
                            <c:if test="${hot.status=='normal'}">
                                <a href="javascript:void(0)" data-url='/${hot.type}/${hot.code}/index.html'><img src="${resRoot}/themes/default/img/${hot.code}.png"><var>${dicts.lottery.lottery[hot.code]}</var></a>
                            </c:if>
                        </c:forEach>
                    </c:if>
                </div>
            </li>
            <li class="show">
                <h2>
                    <span><div class="pict"><var><img src="${resRoot}/themes/default/img/ico8.png"></var></div></span>
                    <b>高频彩</b>
                    <i></i>
                </h2>
                <div class="down">
                    <c:if test="${not empty high}">
                        <c:forEach items="${high}" var="h" varStatus="status">
                            <a href="javascript:void(0)" data-url='/${h.type}/${h.code}/index.html'><img src="${resRoot}/themes/default/img/${h.code}.png"><var>${dicts.lottery.lottery[h.code]}</var></a>
                        </c:forEach>
                    </c:if>
                </div>
            </li>
            <li class="show">
                <h2>
                    <span><div class="pict"><var><img src="${resRoot}/themes/default/img/ico9.png"></var></div></span><b>低频彩</b><i></i>
                </h2>
                <div class="down">
                    <c:if test="${not empty low}">
                        <c:forEach items="${low}" var="l" varStatus="status">
                            <a href="javascript:void(0)" data-url='/${l.type}/${l.code}/index.html'><img src="${resRoot}/themes/default/img/${l.code}.png"><var>${dicts.lottery.lottery[l.code]}</var></a>
                        </c:forEach>
                    </c:if>
                </div>
            </li>
            <li>
                <h2>
                    <a href="javascript:void(0)" data-url='/lotteryResultHistory/toLotteryResultHistory.html'>
                        <span><div class="pict"><var><img src="${resRoot}/themes/default/img/ico10.png"></var></div></span>
                        <b>开奖结果</b>
                        <i></i>
                    </a>
                </h2>
            </li>

            <li class="show">
                <h2>
                    <span><div class="pict"><var><img src="${resRoot}/themes/default/img/ico13.png"></var></div></span><b>玩法介绍</b><i></i>
                </h2>
                <div class="down playWay">
                    <c:if test="${not empty lotteryCodes}">
                        <c:forEach items="${lotteryCodes}" var="lotteryCode" varStatus="status">
                            <a href="javascript:void(0)" data-playway="${lotteryCode}"><img src="${resRoot}/themes/default/img/${lotteryCode}.png"><var>${dicts.lottery.lottery[lotteryCode]}</var></a>
                        </c:forEach>
                    </c:if>
                </div>
            </li>
            <li>
                <h2>
                    <a href="javascript:void(0)" data-url='/lotteryTrendChart/toLotteryTrendChart.html'>
                        <span><div class="pict"><var><img src="${resRoot}/themes/default/img/ico12.png"></var></div></span>
                        <b>走势图表</b>
                        <i></i>
                    </a>
                </h2>
            </li>
            <%--<li>
                <h2>
                    <a href="" target="_blank">
                        <span><div class="pict"><var><img src="${resRoot}/themes/default/img/ico15.png"></var></div></span>
                        <b>手机购彩</b>
                        <i></i>
                    </a>
                </h2>
            </li>--%>

        </ul>
    </div>
</div>
<!--menu_left-->
<div class="con_right">
    <div class="Account">
        <div class="arrows-btn">
            <a href="javascript:void(0)" opent="0"></a>
        </div>
        <c:choose>
            <c:when test="${empty player.account}">
                <p>
                    欢迎，<i>  <a class="i0" href="/">登录</a></i></span>
                </p>
            </c:when>
            <c:otherwise>
                <p>
                    欢迎，<i class="i0" id="player-account">${player.account}</i>
                    <span>余额：<i class="i1 balance">${siteCurrencySign}<font id="money">${soulFn:formatCurrency(player.money)}</font></i><a href="#" id="refreshMoney"><span></span>刷新余额</a></span>
                    <span>
                   <%-- <a href="/pcenter/#/fund/playerTransfer/transfers.html" target="_blank">额度转换</a>  |--%>
                    <a href="javascript:void(0)" data-url='/lotteryBetOrder/list.html'>投注记录</a>  |
                    <a href="javascript:void(0)" data-url='/lotteryTransaction/list.html'>资金记录</a>
                </span>
                </p>
            </c:otherwise>
        </c:choose>

    </div>
    <iframe id="rightContent" src="" frameborder="0" marginheight="0" marginwidth="0" scrolling="auto"
            name="ifm" width="100%" style="overflow-x:hidden;"></iframe>
</div>

<%@ include file="/include/include.js.jsp" %>
<script>
    //用于定义js版本号
    window.top.rcVersion = rcVersion;
    window.top.language = '${language.replace('_','-')}';
</script>
<script type="text/javascript">
    curl(['site/hall/Index'], function(Index) {
        var type = '${type}';
        var code = '${code}';
        if(type != '' && code != ''){
            sessionStorage.lottery_type = type;
            sessionStorage.lottery_code = code;
        }
        index = new Index();
    });
</script>
</body>
</html>
