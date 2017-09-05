<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>极速PK10</title>
    <%@ include file="/include/include.head.jsp" %>
    <style>
        a:hover {
            color: red;
        }
        a:active {
            color: deepskyblue;
        }
    </style>
    <script>
        var CONFIG = {
            BASEURL: '${root}/pk10/',
            RESURL: '${resRoot}/themes/default/'
        };
    </script>
</head>
<body>
<style>.game_name .box2_stage .number span {
    width: 25px;
    height: 25px;
    line-height: 25px;
    font-size: 16px;
}</style>
<div id="gameContent">
    <div class="game_name">
        <div class="wid1">
            <div class="box1_name">
                <h2>极速PK10</h2>
                <p>Lottery results</p>
                <p class="p1">第<i id="expect" class="expect"></i>期</p>
                <div class="select">
                    <img src="${resRoot}/themes/default/img/ico48.png" alt="">
                    <select name="" id="selectCount">
                        <c:forEach var="r" items="${rings}">
                            <option data-file="${resRoot}${r.value}">${r.key}</option>
                        </c:forEach>
                    </select>
                </div>
                <input type="hidden" name="type" value="${type}"/>
                <input type="hidden" name="code" value="${code}"/>
            </div>
            <div class="box2_stage">
                <p><span><i class="acti">近一期</i><i>近五期</i></span>
                    <font id="lastNumber">      </font>
                </p>
                <div class="number pt10 pk10" id="lastOpenCode" style="display: block;">
                </div>
                <div class="number" id="lastOpenCodeList">
                    <ul>
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
                    <li>
                        <b >快钱玩法</b>
                        <p class="kuaiqian">
                            <span class="acti"><a href="javascript:void(0)" data-url="jspk10-twoSide">两面盘</a></span>
                            <span class="pm"><a href="javascript:void(0)" data-url="jspk10-ranking">排名1~10</a></span>
                            <span class="gyzh"><a href="javascript:void(0)" data-url="jspk10-sum">冠亚和</a></span>
                        </p>
                    </li>
                </ul>
            </div>

            <div id="subContent"></div>

        </div>
    </div><!--Single-->
    <%@ include file="/hall/common/BottomTab.jsp" %>
    <%@ include file="/hall/pk10/include/HistoryPk10Color.jsp" %>
</div>
<div type="text/html" id="soundContainer" style="pe:none;"></div>
<%@ include file="/include/include.js.jsp" %>
<script type="text/javascript">
    curl(['site/hall/pk10/Pk10'], function(Page) {
        page = new Page();
    });
</script>

</body>
</html>