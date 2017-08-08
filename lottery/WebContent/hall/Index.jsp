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
    <div class="logo">
        <img src="${resRoot}/themes/default/img/logo.png" alt="" onclick="" style="cursor:pointer">
        <a href="javascript:void(0)"></a>
    </div>
    <div class="list_menu">
        <ul>
            <li class="show">
                <h2>
                    <a href="javascript:void(0)" onclick="getPage('/hall/lottery.html')">
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
                       <c:forEach items="${hot}" var="hot" varStatus="status">
                           <c:if test="${hot.status=='normal'}">
                             <a href="javascript:void(0)" onclick="getPage('/${hot.type}/${hot.code}/index.html')"><img src="${resRoot}/themes/default/img/${hot.code}.png"><var>${dicts.lottery.lottery[hot.code]}</var></a>
                           </c:if>
                       </c:forEach>
                </div>
            </li>
            <li class="show">
                <h2>
                    <span><div class="pict"><var><img src="${resRoot}/themes/default/img/ico8.png"></var></div></span>
                    <b>高频彩</b>
                    <i></i>
                </h2>
                <div class="down">
                    <c:forEach items="${high}" var="h" varStatus="status">
                        <a href="javascript:void(0)" onclick="getPage('/${h.type}/${h.code}/index.html')"><img src="${resRoot}/themes/default/img/${h.code}.png"><var>${dicts.lottery.lottery[h.code]}</var></a>
                    </c:forEach>
                </div>
            </li>
            <li class="show">
                <h2>
                    <span><div class="pict"><var><img src="${resRoot}/themes/default/img/ico9.png"></var></div></span><b>低频彩</b><i></i>
                </h2>
                <div class="down">
                    <c:forEach items="${low}" var="l" varStatus="status">
                        <a href="javascript:void(0)" onclick="getPage('/${l.type}/${l.code}/index.html')"><img src="${resRoot}/themes/default/img/${l.code}.png"><var>${dicts.lottery.lottery[l.code]}</var></a>
                    </c:forEach>
                </div>
            </li>
            <li>
                <h2>
                    <a href="javascript:void(0)" onclick="getPage('/lotteryResultHistory/toLotteryResultHistory.html')">
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
                <div class="down">
                    <a href="javascript:void(0)" onclick="getPlay('cqssc')"><img src="${resRoot}/themes/default/img/cqssc.png"><var>重庆时时彩</var></a>
                    <a href="javascript:void(0)" onclick="getPlay('tjssc')"><img src="${resRoot}/themes/default/img/tjssc.png"><var>天津时时彩</var></a>
                    <a href="javascript:void(0)" onclick="getPlay('xjssc')"><img src="${resRoot}/themes/default/img/xjssc.png"><var>新疆时时彩</var></a>
                    <a href="javascript:void(0)" onclick="getPlay('jsk3')"><img src="${resRoot}/themes/default/img/jsk3.png"><var>江苏快3</var></a>
                    <a href="javascript:void(0)" onclick="getPlay('hbk3')"><img src="${resRoot}/themes/default/img/hbk3.png"><var>湖北快3</var></a>
                    <a href="javascript:void(0)" onclick="getPlay('ahk3')"><img src="${resRoot}/themes/default/img/ahk3.png"><var>安徽快3</var></a>
                    <a href="javascript:void(0)" onclick="getPlay('gxk3')"><img src="${resRoot}/themes/default/img/gxk3.png"><var>广西快3</var></a>
                    <a href="javascript:void(0)" onclick="getPlay('hklhc')"><img src="${resRoot}/themes/default/img/hklhc.png"><var>香港六合彩</var></a>
                    <a href="javascript:void(0)" onclick="getPlay('bjpk10')"><img src="${resRoot}/themes/default/img/bjpk10.png"><var>北京PK10</var></a>
                </div>
            </li>
          <%--  <li>
                <h2>
                    <a href="javascript:void(0)" onclick="getZstPage()">
                        <span><div class="pict"><var><img src="${resRoot}/themes/default/img/ico12.png"></var></div></span>
                        <b>走势图表</b>
                        <i></i>
                    </a>
                </h2>
            </li>--%>
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
        <c:choose>
            <c:when test="${empty player.account}">
                <p>
                    <i class="i0">游客登录</i>
                </span>
                </p>
            </c:when>
            <c:otherwise>
                <p>
                    欢迎，<i class="i0">${player.account}</i>
                    <span>余额：<i class="i1 balance">${siteCurrencySign}<font id="money">${soulFn:formatCurrency(player.money)}</font></i><a href="#" id="refreshMoney"><span></span>刷新余额</a></span>
                    <span>
                   <%-- <a href="/pcenter/#/fund/playerTransfer/transfers.html" target="_blank">额度转换</a>  |--%>
                    <a href="javascript:void(0)" onclick="getPage('/lotteryBetOrder/list.html')">投注记录</a>  |
                    <a href="javascript:void(0)" onclick="getPage('/lotteryTransaction/list.html')">资金记录</a>
                </span>
                </p>
            </c:otherwise>
        </c:choose>

    </div>
    <iframe id="rightContent" src="" frameborder="0" marginheight="0" marginwidth="0" scrolling="auto"
            name="ifm" width="100%" style="overflow-x:hidden;"></iframe>
</div>

<%@ include file="/include/include.js.jsp" %>
<script src="${resRoot}/js/hall/Index.js?v=${rcVersion}"></script>

</body>
</html>
