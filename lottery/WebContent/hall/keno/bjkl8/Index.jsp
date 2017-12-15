<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>北京快乐8</title>
    <%@ include file="/include/include.head.jsp" %>
    <script>
        var CONFIG = {
            BASEURL: '${root}/keno/',
            RESURL: '${resRoot}/themes/default/'
        };
    </script>
</head>

<body>
<style>
    .game_name .box2_stage .number span {width:25px; height:25px; line-height:25px; font-size:16px;}
    #lastOpenCodeList ul li{
        width: 325px!important;
    }
</style>


<div id="gameContent">
    <div class="game_name">
        <div class="wid1">
            <div class="box1_name">
                <h2>北京快乐8</h2>
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
                <gb:token/>
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
                    <li>
                        <b>快钱玩法</b>
                        <p class="kuaiqian">
                            <style type="text/css">
                                .Single .layout .Playmethod ul li p.kuaiqian span {width: 55px;}
                            </style>
                            <span class="acti"><a href="javascript:void(0)" data-url="bjkl8-x5">选5</a></span>
                            <span><a href="javascript:void(0)" data-url="bjkl8-x4">选4</a></span>
                            <span><a href="javascript:void(0)" data-url="bjkl8-x3">选3</a></span>
                            <span><a href="javascript:void(0)" data-url="bjkl8-x2">选2</a></span>
                            <span><a href="javascript:void(0)" data-url="bjkl8-x1">选1</a></span>
                            <span><a href="javascript:void(0)" data-url="bjkl8-qt">其他</a></span>
                        </p>
                    </li>
                </ul>
            </div>
            <div id="subContent"></div>
        </div>
    </div><!--Single-->
    <%@ include file="/hall/common/BottomTab.jsp" %>
</div>
<div type="text/html" id="soundContainer" style="display:none;"></div>

<%@ include file="/include/include.js.jsp" %>
<!-- 开奖历史模板 -->
<script type="text/html" id="template_openDataHistory">
    <li>
        <p style="height:28px">第{{number}}期</p>
        {{if list.length == 0}}
        <p style="margin-left:5px">开奖中</p>
        {{else}}
        {{each list as value}}
        <i >{{value.num}}</i>
        {{/each}}
        {{/if}}
    </li>
</script>
<script type="text/html" id="template_recent1History">
    {{each list as value}}
    <span  >{{value.num}}</span>
    {{/each}}
</script>
<script type="text/javascript">
    curl(['site/hall/common/Common'], function(Page) {
        page = new Page();
    });
</script>
</body>
</html>