<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>PL3 | 体彩排列3</title>
    <%@ include file="/include/include.head.jsp" %>
    <link rel="stylesheet" type="text/css" href="${resComRoot}/themes/public-mod.css?v=${rcVersion}" />
    <script>
        var CONFIG = {
            BASEURL: '${root}/pl3/',
            RESURL: '${resRoot}/themes/default/'
        };
    </script>
</head>
<body>
<div id="gameContent">
    <input type="hidden" name="type" value="${type}" />
    <input type="hidden" name="code" value="${code}" />
    <gb:token/>
    <div class="game_name">
        <div class="wid1">
            <div class="box1_name">
                <h2>体彩排列3</h2>
                <p>Lottery results</p>
                <p class="p1">第<i id="expect" class="expect"></i>期</p>
                <div class="select">
                    <img src="${resRoot}/themes/default/img/ico48.png" alt="">
                    <select id="selectCount">
                        <c:forEach var="r" items="${rings}">
                            <option data-file="${resRoot}${r.value}">${r.key}</option>
                        </c:forEach>
                    </select>
                </div>
            </div>

            <div class="box2_stage rebox2_stage">
                <p>
                    <span><i class="acti">近一期</i><i>近五期</i></span>
                    <font id="lastNumber">体彩排列3第<var></var>期</font>
                </p>
                <div class="number pt10" id="lastOpenCode" style="display: block;">
                </div>
                <div class="number" id="lastOpenCodeList">
                    <ul><li></li></ul>
                </div>
            </div>
            <%@ include file="/hall/common/CountDown.jsp" %>
        </div>
    </div>

    <div class="Single wid1">
        <div class="layout at">
            <div class="Playmethod">
                <ul>
                    <c:if test="${lotteryGenra==1 || lotteryGenra==2}">
                        <li class="gf-li">
                            <b class="acti">官方玩法</b>
                            <p class="guanfang respan pl3 gf-cgwf" data-name="gfwf">
                                <span class="acti"><a href="javascript:void(0)" data-url="tcpl3-dingWeiDan">定位胆</a></span>
                                <span><a href="javascript:void(0)" data-url="tcpl3-threeStar">三星</a></span>
                                <span><a href="javascript:void(0)" data-url="tcpl3-firstTwo">前二</a></span>
                                <span><a href="javascript:void(0)" data-url="tcpl3-afterTwo">后二</a></span>
                                <span><a href="javascript:void(0)" data-url="tcpl3-buDingWei">不定位</a></span>
                            </p>
                        </li>
                    </c:if>
                    <c:if test="${lotteryGenra==1 || lotteryGenra==3}">
                        <li>
                            <b>快钱玩法</b>
                            <p>
                                <span class="acti"><a href="javascript:void(0)" data-url="tcpl3-fix">定位</a></span>
                                <span><a href="javascript:void(0)" data-url="tcpl3-comb">组合</a></span>
                                <span><a href="javascript:void(0)" data-url="tcpl3-sum">和数</a></span>
                                <span><a href="javascript:void(0)" data-url="tcpl3-group3">组三</a></span>
                                <span><a href="javascript:void(0)" data-url="tcpl3-group6">组六</a></span>
                                <span><a href="javascript:void(0)" data-url="tcpl3-span">跨度</a></span>
                            </p>
                        </li>
                    </c:if>
                </ul>
            </div>
            <div id="subContent"></div>
        </div>
    </div><!--Single-->



    <%@ include file="/hall/common/Gfwftzqd.jsp" %>
    <%@ include file="/hall/common/BottomTab.jsp" %>
    <%@ include file="/hall/common/HistoryColor.jsp" %>
    <%@ include file="/hall/common/GfwfTemplate.jsp" %>
</div>
<div type="text/html" id="soundContainer" style="display:none;"></div>

<%@ include file="/include/include.js.jsp" %>
<script type="text/javascript">
    curl(['site/hall/pl3/Common'], function(Page) {
        page = new Page();
    });
</script>
</body>
</html>