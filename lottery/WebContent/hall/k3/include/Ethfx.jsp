<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<div class="group">
    <ul>
        <li >
            <b style="width: 83px">二同号复选</b>
            <p class="btn_fu_zhi">
                <span class="playPlIdBtn acti"  data-play_Code="k3_same_num" data-play_id="k3_fuxuan_ertong" data-play_pl_id="复选" data-name="ethfx" data-fun_zhushu="zhushu_ethfx" data-fun_content="content_ethfx" data-fun_suiji="suiji_ethfx"><a href="javascript:void(0)">标准选号</a></span>
            </p>
        </li>
    </ul>
</div>

<div id="subPage"></div>
<div id="subJRange"></div>
<script type="text/html" id="template_ethfx">
    <div class="Pick cl-1002 recl-1002" data-flag="fu">
        <p class="p1">
        <span class="fr fl cl-1001">
            选择对子(11,22,33,44,55,66)投注，开奖号码中包含选择的对子即中奖。
            <a>
                <img src="${resRoot}/themes/default/img/ico60.png" alt="">选号规则
                <var>从11～66中任选1个或多个号码。</var>
            </a>
            <a>
                <img src="${resRoot}/themes/default/img/ico61.png" alt="">中奖说明
                <var>中奖号码(不是豹子号)中包括所选的号码即为中奖。如买的是11,则中奖号码为112,则中奖。</var>
            </a>
        </span>
        </p>
        <ul class="dxds k3">
            <li data-name="二同号">
                <b><i>二同号</i></b>
                <var class="numLine">
                    <span class="k2-tx-ball"><i>11</i></span>
                    <span class="k2-tx-ball"><i>22</i></span>
                    <span class="k2-tx-ball"><i>33</i></span>
                    <span class="k2-tx-ball"><i>44</i></span>
                    <span class="k2-tx-ball"><i>55</i></span>
                    <span class="k2-tx-ball"><i>66</i></span>
                </var>
                <div class="clear re-5x-i qc-btn-w">
                    <i onclick=" page.PlayWay.selectFun_1(this)">全</i>
                    <i onclick=" page.PlayWay.selectFun_6(this)">清</i>
                </div>
            </li>
        </ul>
    </div>
</script>

<script type="text/javascript">
    curl(['site/hall/k3/Ethfx'], function(PlayWay) {
        page.PlayWay = new PlayWay();
    });
</script>