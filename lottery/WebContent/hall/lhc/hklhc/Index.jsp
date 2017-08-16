<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>六合彩</title>
    <%@ include file="/include/include.head.jsp" %>
    <script>
        var CONFIG = {
            BASEURL: '${root}/lhc/',
            RESURL: '${resRoot}/themes/default/'
        };
    </script>
    <%@ include file="/include/include.js.jsp" %>
</head>

<body>
<div id="gameContent">
    <input type="hidden" name="type" value="${type}" />
    <input type="hidden" name="code" value="${code}" />
    <div class="game_name">
        <div class="wid1">
            <div class="box1_name">
                <h2>香港六合彩</h2>
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
                    <font id="lastNumber">香港六合彩<var></var>期</font>
                </p>
                <div class="number pt10" id="lastOpenCode" style="display: none;">
                    <span class="round ball-blue">09</span>
                    <span class="round ball-blue">48</span>
                    <span class="round ball-red">23</span>
                    <span class="round ball-blue">10</span>
                    <span class="round ball-red">30</span>
                    <span class="round ball-green">38</span>
                    <span class="round ball-green">16</span>
                </div>
                <div class="number" id="lastOpenCodeList" style="display: none;">
                    <ul>
                        <li>
                            <p>第2017035期</p>
                            <i class="round ball-blue">09</i>
                            <i class="round ball-blue">48</i>
                            <i class="round ball-red">23</i>
                            <i class="round ball-blue">10</i>
                            <i class="round ball-red">30</i>
                            <i class="round ball-green">38</i>
                            <i class="round ball-green">16</i>
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
                    <li>
                        <b>快钱玩法</b>
                        <p>
                            <span class="acti"><a href="javascript:void(0)" data-url="hklhc-specialCode">特码</a></span>
                            <span><a href="javascript:void(0)" data-url="hklhc-normalCode">正码</a></span>
                            <span><a href="javascript:void(0)" data-url="hklhc-normalSpecialCode">正码特</a></span>
                            <span><a href="javascript:void(0)" data-url="hklhc-normal1To6">正码1-6</a></span>
                        </p>
                    </li>
                </ul>
            </div>

            <div id="subContent"></div>
        </div>
    </div><!--Single-->
    <%@ include file="/hall/common/BottomTab.jsp" %>
    <%@ include file="/hall/common/HistoryColor.jsp" %>
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