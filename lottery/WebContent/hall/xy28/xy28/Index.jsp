<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>幸运28</title>
    <%@ include file="/include/include.head.jsp" %>

    <script>
        var CONFIG = {
            BASEURL: '${root}/xy28/',
            RESURL: '${resRoot}/themes/default/'
        };
    </script>
</head>
<body>
<div id="gameContent">
    <div class="game_name">
        <div class="wid1">
            <div class="box1_name">
                <h2>幸运28</h2>
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
                <gb:token/>
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
                        <b>快钱玩法</b>
                        <p class="kuaiqian">
                            <style>.Single .layout .Playmethod ul li p.kuaiqian span {
                                width: 80px;
                            }</style>
                            <span><a href="javascript:void(0)" data-url="xy28-hh">混合</a></span>
                            <span><a href="javascript:void(0)" data-url="xy28-hz">和值特码</a></span>
                            <span><a href="javascript:void(0)" data-url="xy28-tmb3">特码包三</a></span>
                        </p>
                    </li>
                </ul>
            </div>

            <div id="subContent"></div>

        </div>
    </div><!--Single-->
    <%@ include file="/hall/common/BottomTab.jsp" %>

    <!-- 开奖历史模板 -->
    <script type="text/html" id="template_openDataHistory">
        <li>
            <p>第{{number}}期</p>
            {{if list.length == 0}}
            <p style="margin-left:5px">开奖中</p>
            {{else}}
            {{each list as value index}}
            {{if index < 2}}
            <i>{{value.num}}</i><i class="plusmin">+</i>
            {{else}}
            <i>{{value.num}}</i><i class="plusmin">=</i><i class="{{colorBg}}">{{sum}}</i>
            {{/if}}

            {{/each}}
            {{/if}}
        </li>
    </script>
    <script type="text/html" id="template_recent1History">
        {{each list as value}}
        <span class="{{value.colour}}">{{value.num}}</span>
        {{/each}}
    </script>
</div>
<div type="text/html" id="soundContainer" style="display:none;"></div>
<%@ include file="/include/include.js.jsp" %>
<script type="text/javascript">
    curl(['site/hall/keno/xy28/Xy28'], function(Page) {
        page = new Page();
    });

</script>

</body>
</html>