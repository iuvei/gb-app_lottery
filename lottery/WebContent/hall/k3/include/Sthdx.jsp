<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<div class="group">
    <ul>
        <li >
            <b style="width: 83px">三同号单选</b>
            <p class="btn_fu_zhi">
                <span class="playPlIdBtn acti"  data-play_Code="k3_same_num" data-play_id="k3_danxuan_santong" data-play_pl_id="单选" data-name="sthdx" data-fun_zhushu="zhushu_sthdx" data-fun_content="content_sthdx" data-fun_suiji="suiji_sthdx"><a href="javascript:void(0)">标准选号</a></span>
            </p>
        </li>
    </ul>
</div>

<div id="subPage"></div>
<div id="subJRange"></div>
<script type="text/html" id="template_sthdx">
    <div class="Pick cl-1002 recl-1002" data-flag="fu">
        <p class="p1">
        <span class="fr fl cl-1001">
            单选1个豹子(111,222,333,444,555,666)投注，选号与开奖号码一致即中奖。
            <a>
                <img src="${resRoot}/themes/default/img/ico60.png" alt="">选号规则
                <var>对相同的三个号码（111、222、333、444、555、666）中的任意一个进行投注。</var>
            </a>
            <a>
                <img src="${resRoot}/themes/default/img/ico61.png" alt="">中奖说明
                <var>所选号码开出即中奖。</var>
            </a>
        </span>
        </p>
        <ul class="dxds k3">
            <li data-name="三同号">
                <b><i>三同号</i></b>
                <var class="numLine">
                    <span class="k2-tx-ball"><i>111</i></span>
                    <span class="k2-tx-ball"><i>222</i></span>
                    <span class="k2-tx-ball"><i>333</i></span>
                    <span class="k2-tx-ball"><i>444</i></span>
                    <span class="k2-tx-ball"><i>555</i></span>
                    <span class="k2-tx-ball"><i>666</i></span>
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
    curl(['site/hall/k3/Sthdx'], function(PlayWay) {
        page.PlayWay = new PlayWay();
    });
</script>