<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>时时彩 | 天津时时彩</title>
    <%@ include file="/include/include.head.jsp" %>
    <script>
        var CONFIG = {
            BASEURL: '${root}/ssc/',
            RESURL: '${resRoot}/themes/default/'
        };
    </script>
    <%@ include file="/include/include.js.jsp" %>
</head>

<body>
<div id="gameContent">
    <div class="game_name">
        <div class="wid1">
            <div class="box1_name">
                <h2>天津时时彩</h2>
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
                <input type="hidden" name="type" value="${type}" />
                <input type="hidden" name="code" value="${code}" />
            </div>

            <div class="box2_stage rebox2_stage">
                <p>
                    <span><i class="acti">近一期</i><i>近五期</i></span>
                    <font id="lastNumber">天津时时彩第<var></var>期</font>
                </p>
                <div class="number pt10" id="lastOpenCode" style="display: block;">
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
                    <li class="gf-li">
                        <b class="acti">官方玩法</b>
                        <p class="guanfang respan gf-cgwf" data-name="gfwf">
                            <span class="acti"><a href="javascript:void(0)" data-url="cqssc-fiveStar">五星</a></span>
                            <span><a href="javascript:void(0)" data-url="cqssc-fourStar">四星</a></span>
                            <span><a href="javascript:void(0)" data-url="cqssc-afterThree">后三</a></span>
                            <span><a href="javascript:void(0)" data-url="cqssc-firstThree">前三</a></span>
                            <span><a href="javascript:void(0)" data-url="cqssc-firstTwo">前二</a></span>
                            <span><a href="javascript:void(0)" data-url="cqssc-dingWeiDan">定位胆</a></span>
                            <span><a href="javascript:void(0)" data-url="cqssc-buDingWei">不定位</a></span>
                            <span><a href="javascript:void(0)" data-url="cqssc-bigSmall">大小单双</a></span>
                            <span><a href="javascript:void(0)" data-url="cqssc-optionalTwo">任选二</a></span>
                            <span><a href="javascript:void(0)" data-url="cqssc-optionalThree">任选三</a></span>
                            <span><a href="javascript:void(0)" data-url="cqssc-optionalFour">任选四</a></span>
                        </p>
                    </li>
                    <li>
                        <b>快钱玩法</b>
                        <p class="kuaiqian">
                            <style type="text/css">
                                .Single .layout .Playmethod ul li p.kuaiqian span {width: 61px;}
                            </style>
                            <span class="acti"><a href="javascript:void(0)" data-url="tjssc-twoSide">双面</a></span>
                            <span><a href="javascript:void(0)" data-url="tjssc-digit">数字盘</a></span>
                            <span><a href="javascript:void(0)" data-url="tjssc-oneWordFix">一字定位</a></span>
                            <span><a href="javascript:void(0)" data-url="tjssc-twoWordFix">二字定位</a></span>
                            <span><a href="javascript:void(0)" data-url="tjssc-threeWordFix">三字定位</a></span>
                            <span><a href="javascript:void(0)" data-url="tjssc-oneWordComb">一字组合</a></span>
                            <span><a href="javascript:void(0)" data-url="tjssc-groupThree">组选三</a></span>
                            <span><a href="javascript:void(0)" data-url="tjssc-groupSix">组选六</a></span>
                            <span><a href="javascript:void(0)" data-url="tjssc-span">跨度</a></span>
                            <span><a href="javascript:void(0)" data-url="tjssc-dragonTiger">龙虎</a></span>
                        </p>
                    </li>
                </ul>
            </div>
            <div id="subContent"></div>
            <i class="it0 left_it0"><img src="${resRoot}/themes/default/img/ico46.png" alt=""></i>
            <i class="it1 right_it1"><img src="${resRoot}/themes/default/img/ico46.png" alt=""></i>
        </div>
    </div><!--Single-->
    <%@ include file="../include/include.gfwftzqd.jsp" %>
    <%@ include file="/hall/common/BottomTab.jsp" %>
    <%@ include file="/hall/common/History.jsp" %>
    <%@ include file="../include/SscGfwfTemplate.jsp" %>
</div>
<div type="text/html" id="soundContainer" style="display:none;"></div>
<script type="text/javascript">
    curl(['site/hall/ssc/Ssc'], function(Page) {
        page = new Page();
    });
</script>
</body>
</html>