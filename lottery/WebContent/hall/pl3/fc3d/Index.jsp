<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title></title>
    <%@ include file="/include/include.head.jsp" %>
    <script>
        var CONFIG = {
            BASEURL: '${root}/ssc/',
            RESURL: '${resRoot}/themes/default/'
        };
    </script>
</head>

<body>
<div id="gameContent">
    <div class="game_name">
        <div class="wid1">
            <div class="box1_name">
                <h2>福彩3D</h2>
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
                    <font id="lastNumber">福彩3D第<var></var>期</font>
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
                    <li>
                        <b>官方玩法</b>
                        <p data-name="gfwf">
                            <style type="text/css">
                                .Single .layout .Playmethod ul li p.kuaiqian span {width: 61px;}
                            </style>
                            <span><a href="javascript:void(0)" data-url="${code}-3star">三星</a></span>
                            <span><a href="javascript:void(0)" data-url="${code}-First2">前二</a></span>
                            <span><a href="javascript:void(0)" data-url="${code}-After2">后二</a></span>
                            <span><a href="javascript:void(0)" data-url="${code}-DingWeiDan">定位胆</a></span>
                            <span><a href="javascript:void(0)" data-url="${code}-BuDingWei">不定位</a></span>
                        </p>
                    </li>
                    <li>
                        <b>快钱玩法</b>
                        <p class="kuaiqian">
                            <style type="text/css">
                                .Single .layout .Playmethod ul li p.kuaiqian span {width: 61px;}
                            </style>
                            <span><a href="javascript:void(0)" data-url="${code}-fix">定位</a></span>
                            <span><a href="javascript:void(0)" data-url="${code}-comb">组合</a></span>
                            <span><a href="javascript:void(0)" data-url="${code}-sum">和数</a></span>
                            <span><a href="javascript:void(0)" data-url="${code}-group3">组三</a></span>
                            <span><a href="javascript:void(0)" data-url="${code}-group6">组六</a></span>
                            <span><a href="javascript:void(0)" data-url="${code}-span">跨度</a></span>
                        </p>
                    </li>
                </ul>
            </div>
            <div id="subContent"></div>
            <i class="it0 left_it0"><img src="${resRoot}/themes/default/img/ico46.png" alt=""></i>
            <i class="it1 right_it1"><img src="${resRoot}/themes/default/img/ico46.png" alt=""></i>
        </div>
    </div><!--Single-->
    <%@ include file="/hall/pl3/include/subpage/include.gfwftzqd.jsp" %>
    <%@ include file="/hall/common/BottomTab.jsp" %>
    <%@ include file="/hall/common/History.jsp" %>
    <%@ include file="/hall/pl3/include/subpage/Pl3GfwfTemplate.jsp" %>
</div>
<div type="text/html" id="soundContainer" style="display:none;"></div>

<%@ include file="/include/include.js.jsp" %>
<script type="text/javascript">
    curl(['site/hall/pl3/Pl3'], function(Page) {
        page = new Page();
    });
</script>
</body>
</html>