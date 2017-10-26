<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>PK10 | 北京PK10</title>
    <%@ include file="/include/include.head.jsp" %>
    <script>
        var CONFIG = {
            BASEURL: '${root}/pk10/',
            RESURL: '${resRoot}/themes/${curTheme}/'
        };
    </script>
</head>

<body>
<style>
    .game_name .box2_stage .number span {width:25px; height:25px; line-height:25px; font-size:16px;}
</style>

<div id="gameContent">
    <div class="game_name">
        <div class="wid1">
            <div class="box1_name">
                <h2>北京PK10</h2>
                <p>Lottery results</p>
                <p class="p1">第<i id="expect" class="expect"></i>期</p>
                <div class="select">
                    <img src="${resRoot}/themes/default/img/ico48.png">
                    <select id="selectCount">
                        <c:forEach var="r" items="${rings}">
                            <option data-file="${resRoot}${r.value}">${r.key}</option>
                        </c:forEach>
                    </select>
                </div>
                <input type="hidden" name="type" value="${type}" />
                <input type="hidden" name="code" value="${code}" />
            </div>

            <div class="box2_stage">
                <p>
                    <span><i class="acti">近一期</i><i>近五期</i></span>
                    <font id="lastNumber"></font>
                </p>
                <div class="number pt10 pk10" id="lastOpenCode" style="display: block;">
                </div>
                <div class="number" id="lastOpenCodeList">
                    <ul></ul>
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
                        <p class="guanfang respan gf-cgwf" data-name="gfwf">
                            <span class="acti"><a href="javascript:void(0)" data-url="bjpk10-firstOne">前一</a></span>
                            <span><a href="javascript:void(0)" data-url="bjpk10-firstTwo">前二</a></span>
                            <span><a href="javascript:void(0)" data-url="bjpk10-firstThree">前三</a></span>
                            <span><a href="javascript:void(0)" data-url="bjpk10-dingWeiDan">定位胆</a></span>
                        </p>
                    </li>
                    </c:if>
                    <c:if test="${lotteryGenra == 1 || lotteryGenra==3}">
                    <li>
                        <b>快钱玩法</b>
                        <p class="kuaiqian">
                            <style type="text/css">
                                .Single .layout .Playmethod ul li p.kuaiqian span {width: 55px;}
                            </style>
                            <span><a href="javascript:void(0)" data-url="bjpk10-twoSide">双面</a></span>
                            <span><a href="javascript:void(0)" data-url="bjpk10-digit">数字盘</a></span>
                            <span><a href="javascript:void(0)" data-url="bjpk10-ranking-champion">冠军</a></span>
                            <span><a href="javascript:void(0)" data-url="bjpk10-ranking-runner_up">亚军</a></span>
                            <span><a href="javascript:void(0)" data-url="bjpk10-ranking-third_runner">季军</a></span>
                            <span><a href="javascript:void(0)" data-url="bjpk10-ranking-fourth_place">第四名</a></span>
                            <span><a href="javascript:void(0)" data-url="bjpk10-ranking-fifth_place">第五名</a></span>
                            <span><a href="javascript:void(0)" data-url="bjpk10-ranking-sixth_place">第六名</a></span>
                            <span><a href="javascript:void(0)" data-url="bjpk10-ranking-seventh_place">第七名</a></span>
                            <span><a href="javascript:void(0)" data-url="bjpk10-ranking-eighth_place">第八名</a></span>
                            <span><a href="javascript:void(0)" data-url="bjpk10-ranking-ninth_place">第九名</a></span>
                            <span><a href="javascript:void(0)" data-url="bjpk10-ranking-tenth_place">第十名</a></span>
                            <span><a href="javascript:void(0)" data-url="bjpk10-sum">冠亚和</a></span>
                        </p>
                    </li>
                    </c:if>
                </ul>
            </div>
            <div id="subContent"></div>
            <i class="it0 left_it0"><img src="${resRoot}/themes/default/img/ico46.png" alt=""></i>
            <i class="it1 right_it1"><img src="${resRoot}/themes/default/img/ico46.png" alt=""></i>
        </div>
    </div><!--Single-->
    <%@ include file="../include/include.gfwftzqd.jsp" %>
    <%@ include file="/hall/common/BottomTab.jsp" %>
  <%--  <%@ include file="/hall/common/History.jsp" %>--%>
    <%@ include file="/hall/pk10/include/HistoryPk10Color.jsp" %>
    <%@ include file="../include/Pk10GfwfTemplate.jsp" %>
</div>
<div type="text/html" id="soundContainer" style="display:none;"></div>

<%@ include file="/include/include.js.jsp" %>
<script type="text/javascript">
    curl(['site/hall/pk10/Pk10'], function(Page) {
        page = new Page();
    });
</script>
</body>
</html>