<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>十分彩 | 广东快乐十分</title>
    <%@ include file="/include/include.head.jsp" %>
    <script>
        var CONFIG = {
            BASEURL: '${root}/sfc/',
            RESURL: '${resRoot}/themes/${curTheme}/'
        };
    </script>
</head>

<body>
<div id="gameContent">
    <div class="game_name">
        <div class="wid1">
            <div class="box1_name">
                <h2>快乐十分</h2>
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
                <input type="hidden" name="type" value="${type}"/>
                <input type="hidden" name="code" value="${code}"/>
            </div>
            <div class="box2_stage rebox2_stage">
                <p>
                    <span><i class="acti">近一期</i><i>近五期</i></span>
                    <font id="lastNumber">快乐十分第<var></var>期</font>
                </p>
                <div class="number globule pt10" id="lastOpenCode" style="display: block;">
                </div>
                <div class="number" id="lastOpenCodeList" style="display: none">
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
                        <b>快钱玩法</b>
                        <p class="kuaiqian">
                            <style type="text/css">
                                .Single .layout .Playmethod ul li p.kuaiqian span {
                                    width: 61px;
                                }
                            </style>
                            <span><a href="javascript:void(0)" data-url="gdkl10-twoSide">双面</a></span>
                            <span><a href="javascript:void(0)" data-url="gdkl10-ranking-sfc_first">第一球</a></span>
                            <span><a href="javascript:void(0)" data-url="gdkl10-ranking-sfc_second">第二球</a></span>
                            <span><a href="javascript:void(0)" data-url="gdkl10-ranking-sfc_third">第三球</a></span>
                            <span><a href="javascript:void(0)" data-url="gdkl10-ranking-sfc_fourth">第四球</a></span>
                            <span><a href="javascript:void(0)" data-url="gdkl10-ranking-sfc_fifth">第五球</a></span>
                            <span><a href="javascript:void(0)" data-url="gdkl10-ranking-sfc_sixth">第六球</a></span>
                            <span><a href="javascript:void(0)" data-url="gdkl10-ranking-sfc_seventh">第七球</a></span>
                            <span><a href="javascript:void(0)" data-url="gdkl10-ranking-sfc_eighth">第八球</a></span>
                            <span><a href="javascript:void(0)" data-url="gdkl10-dragonTiger">龙虎</a></span>
                        </p>
                    </li>
                </ul>
            </div>
            <div id="subContent"></div>
        </div>
    </div><!--Single-->
    <%@ include file="/hall/common/BottomTab.jsp" %>
    <%@ include file="/hall/common/History.jsp" %>
</div>
<div type="text/html" id="soundContainer" style="display:none;"></div>

<%@ include file="/include/include.js.jsp" %>
<script type="text/javascript">
    curl(['site/hall/sfc/Sfc'], function (Page) {
        page = new Page();
    });
</script>
</body>
</html>