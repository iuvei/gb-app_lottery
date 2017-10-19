<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>快3 | 安徽快3</title>
    <%@ include file="/include/include.head.jsp" %>
    <link rel="stylesheet" type="text/css" href="${resComRoot}/themes/public-mod.css?v=${rcVersion}" />
    <script>
        var CONFIG = {
            BASEURL: '${root}/k3/',
            RESURL: '${resRoot}/themes/default/'
        };
    </script>

</head>

<body>
<div id="gameContent">
    <input type="hidden" name="type" value="${type}" />
    <input type="hidden" name="code" value="${code}" />
    <div class="game_name">
        <div class="wid1">
            <div class="box1_name">
                <h2>安徽快3</h2>
                <p>Lottery results</p>
                <p class="p1">第<i class="expect" id="expect"></i>期</p>
                <div class="select">
                    <img src="${resRoot}/themes/default/img/ico48.png" alt="">
                    <select name="" id="selectCount">
                        <c:forEach var="r" items="${rings}">
                            <option data-file="${resRoot}${r.value}">${r.key}</option>
                        </c:forEach>
                    </select>
                </div>
            </div>
            <div class="box2_stage rebox2_stage">
                <p>
                    <span><i class="acti">近一期</i><i>近五期</i></span>
                    <font id="lastNumber">安徽快3<var></var>期</font>
                </p>
                <div class="number pt10" id="lastOpenCode" style="display: none;">
                </div>
                <div class="number" id="lastOpenCodeList" style="display: none;">
                    <ul>
                        <li>
                        </li>
                    </ul>
                </div>
            </div>
            <%@ include file="/hall/common/CountDown.jsp" %>
        </div>
    </div>

    <div class="Single wid1">
        <div class="layout at">
            <div class="Playmethod">
                <ul>
                    <c:if test="${lotteryGenra == 1 || lotteryGenra==2}">
                        <li class="gf-li">
                            <b class="acti">官方玩法</b>
                            <p class="guanfang respan k3 gf-cgwf" data-name="gfwf">
                                <span class="acti"><a href="javascript:void(0)" data-url="ahk3-sthtx">三同号通选</a></span>
                                <span><a href="javascript:void(0)" data-url="ahk3-sthdx">三同号单选</a></span>
                                <span><a href="javascript:void(0)" data-url="ahk3-ethfx">二同号复选</a></span>
                                <span><a href="javascript:void(0)" data-url="ahk3-ethdx">二同号单选</a></span>
                                <span><a href="javascript:void(0)" data-url="ahk3-sbth">三不同号</a></span>
                                <span><a href="javascript:void(0)" data-url="ahk3-ebth">二不同号</a></span>
                                <span><a href="javascript:void(0)" data-url="ahk3-slhtx">三连号通选</a></span>
                            </p>
                        </li>
                    </c:if>
                    <c:if test="${lotteryGenra == 1 || lotteryGenra==3}">
                    <li>
                        <b>快钱玩法</b>
                        <p>
                            <span class="acti"><a href="javascript:void(0)" data-url="ahk3-points">点数</a></span>
                            <span><a href="javascript:void(0)" data-url="ahk3-armedForces">三军</a></span>
                            <span><a href="javascript:void(0)" data-url="ahk3-dice">围骰/全骰</a></span>
                            <span><a href="javascript:void(0)" data-url="ahk3-longCard">长牌</a></span>
                            <span><a href="javascript:void(0)" data-url="ahk3-shortCard">短牌</a></span>
                        </p>
                    </li>
                    </c:if>
                </ul>
            </div>

            <div id="subContent"></div>
        </div>
    </div><!--Single-->
    <%@ include file="../include/gfwftzqd.jsp" %>
    <%@ include file="/hall/common/BottomTab.jsp" %>
    <%@ include file="/hall/common/HistoryColor.jsp" %>
    <%@ include file="../include/K3GfwfTemplate.jsp" %>
</div>
<div type="text/html" id="soundContainer" style="display:none;"></div>

<%@ include file="/include/include.js.jsp" %>
<script type="text/javascript">
    curl(['site/hall/common/Common'], function(Page) {
        page = new Page();
    });
</script>
</body>
</html>