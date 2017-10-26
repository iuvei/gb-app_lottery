<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<div class="group">
    <ul>
        <li >
            <b style="width: 83px">三连号通选</b>
            <p class="btn_fu_zhi">
                <span class="playPlIdBtn acti"  data-play_Code="k3_three_straight" data-play_id="k3_tongxuan_sanlian" data-play_pl_id="通选" data-name="slhtx" data-fun_zhushu="zhushu_slhtx" data-fun_content="content_slhtx" data-fun_suiji="suiji_slhtx"><a href="javascript:void(0)">标准选号</a></span>
            </p>
        </li>
    </ul>
</div>

<div id="subPage"></div>
<div id="subJRange"></div>
<script type="text/html" id="template_slhtx">
    <div class="Pick cl-1002 recl-1002" data-flag="fu">
        <p class="p1">
        <span class="fr fl cl-1001">
            全包顺子(123,234,345,456)投注，开出任意顺子即中奖。
            <a>
                <img src="${resRoot}/themes/default/img/ico60.png" alt="">选号规则
                <var>对所有3个相连的号码（123、234、345、456）进行投注。</var>
            </a>
            <a>
                <img src="${resRoot}/themes/default/img/ico61.png" alt="">中奖说明
                <var>中奖号码为123、234、345、456之一即中奖。</var>
            </a>
        </span>
        </p>
        <ul class="wx-page">
            <li data-name="三连号">
                <b><i>三连号</i></b>
                <var class="numLine">
                    <span class="k2-tx-ball"><i>通选</i></span>
                </var>

            </li>
        </ul>
    </div>
</script>

<script type="text/javascript">
    curl(['site/hall/k3/Slhtx'], function(PlayWay) {
        page.PlayWay = new PlayWay();
    });
</script>