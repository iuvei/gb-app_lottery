<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<div class="group">
    <ul>
        <li >
            <b style="width: 83px">三不同号</b>
            <p class="btn_fu_zhi">
                <span class="playPlIdBtn acti"  data-play_Code="k3_diff_num" data-play_id="k3_sanbutong" data-play_pl_id="三不同" data-name="sbth" data-fun_zhushu="zhushu_sbth" data-fun_content="content_sbth" data-fun_suiji="suiji_sbth"><a href="javascript:void(0)">标准选号</a></span>
            </p>
        </li>
    </ul>
</div>

<div id="subPage"></div>
<div id="subJRange"></div>
<script type="text/html" id="template_sbth">
    <div class="Pick cl-1002 recl-1002" data-flag="fu">
        <p class="p1">
        <span class="fr fl cl-1001">
            至少选择3个不同号码投注，选号与开奖号码一致即中奖。
            <a>
                <img src="${resRoot}/themes/default/img/ico60.png" alt="">选号规则
                <var>从1～6中任选3个或多个号码。</var>
            </a>
            <a>
                <img src="${resRoot}/themes/default/img/ico61.png" alt="">中奖说明
                <var>中奖号码为三个不同的号码，且全部在所购买的号码中，即为中奖。</var>
            </a>
        </span>
        </p>
        <ul class="dxds k3">
            <li data-name="三不同">
                <b><i>三不同</i></b>
                <var class="numLine">
                    <span><i>1</i></span>
                    <span><i>2</i></span>
                    <span><i>3</i></span>
                    <span><i>4</i></span>
                    <span><i>5</i></span>
                    <span><i>6</i></span>
                </var>
                <div class="clear re-5x-i qc-btn-w">
                    <i onclick=" page.PlayWay.selectFun_1(this)">全</i>
                    <i onclick=" page.PlayWay.selectFun_6(this)">清</i>
                </div>
            </li>
            </li>
        </ul>
    </div>
</script>

<script type="text/javascript">
    curl(['site/hall/k3/Sbth'], function(PlayWay) {
        page.PlayWay = new PlayWay();
    });
</script>