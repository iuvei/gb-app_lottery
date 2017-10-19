<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<div class="group">
    <ul>
        <li >
            <b style="width: 83px">三同号通选</b>
            <p class="btn_fu_zhi">
                <span class="playPlIdBtn acti"  data-play_Code="k3_same_num" data-play_id="k3_tongxuan_santong" data-play_pl_id="通选" data-name="sthtx" data-fun_zhushu="zhushu_sthtx" data-fun_content="content_sthtx" data-fun_suiji="suiji_sthtx"><a href="javascript:void(0)">标准选号</a></span>
            </p>
        </li>
    </ul>
</div>

<div id="subPage"></div>
<div id="subJRange"></div>
<script type="text/html" id="template_sthtx">
    <div class="Pick cl-1002 recl-1002" data-flag="fu">
        <p class="p1">
        <span class="fr fl cl-1001">
            全包豹子(111,222,333,444,555,666)投注，开出任意豹子即中奖。
            <a>
                <img src="${resRoot}/themes/default/img/ico60.png" alt="">选号规则
                <var>对所有相同的三个号码（111、222、333、444、555、666）进行投注。</var>
            </a>
            <a>
                <img src="${resRoot}/themes/default/img/ico61.png" alt="">中奖说明
                <var>三位号码全相同即中奖。</var>
            </a>
        </span>
        </p>
        <ul class="wx-page">
            <li data-name="三同号">
                <b><i>三同号</i></b>
                <var class="numLine">
                    <span class="k2-tx-ball"><i>通选</i></span>
                </var>

            </li>
        </ul>
    </div>
</script>

<script type="text/javascript">
    curl(['site/hall/k3/Sthtx'], function(PlayWay) {
        page.PlayWay = new PlayWay();
    });
</script>