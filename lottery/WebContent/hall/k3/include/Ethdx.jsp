<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<div class="group">
    <ul>
        <li >
            <b style="width: 83px">二同号单选</b>
            <p class="btn_fu_zhi">
                <span class="playPlIdBtn acti"  data-play_Code="k3_same_num" data-play_id="k3_danxuan_ertong" data-play_pl_id="单选" data-name="ethdx" data-fun_zhushu="zhushu_ethdx" data-fun_content="content_ethdx" data-fun_suiji="suiji_ethdx"><a href="javascript:void(0)">标准选号</a></span>
            </p>
        </li>
    </ul>
</div>

<div id="subPage"></div>
<div id="subJRange"></div>
<script type="text/html" id="template_ethdx">
    <div class="Pick cl-1002 recl-1002" data-flag="fu">
        <p class="p1">
        <span class="fr fl cl-1001">
            选择1个对子和1个不同号码投注，选号与开奖号码一致即中奖。
            <a>
                <img src="${resRoot}/themes/default/img/ico60.png" alt="">选号规则
                <var>选择1对相同号码（11 , 22 , 33 , 44 , 55 , 66）和1个不同号码(1 , 2 , 3 , 4 , 5 , 6)投注。</var>
            </a>
            <a>
                <img src="${resRoot}/themes/default/img/ico61.png" alt="">中奖说明
                <var>选号与奖号相同（顺序不限）。</var>
            </a>
        </span>
        </p>
        <ul class="dxds k3">
            <li data-name="二同号">
                <b><i>二同号</i></b>
                <var class="numLine">
                    <span class="k2-tx-ball ertonghao 11"><i>11</i></span>
                    <span class="k2-tx-ball ertonghao 22"><i>22</i></span>
                    <span class="k2-tx-ball ertonghao 33"><i>33</i></span>
                    <span class="k2-tx-ball ertonghao 44"><i>44</i></span>
                    <span class="k2-tx-ball ertonghao 55"><i>55</i></span>
                    <span class="k2-tx-ball ertonghao 66"><i>66</i></span>
                </var>
            </li>

            <li data-name="二不同">
                <b><i>二不同</i></b>
                <var class="numLine">
                    <span class="k2-tx-ball erbutong 1"><i>1</i></span>
                    <span class="k2-tx-ball erbutong 2"><i>2</i></span>
                    <span class="k2-tx-ball erbutong 3"><i>3</i></span>
                    <span class="k2-tx-ball erbutong 4"><i>4</i></span>
                    <span class="k2-tx-ball erbutong 5"><i>5</i></span>
                    <span class="k2-tx-ball erbutong 6"><i>6</i></span>
                </var>
            </li>
        </ul>
    </div>
</script>

<script type="text/javascript">
    curl(['site/hall/k3/Ethdx'], function(PlayWay) {
        page.PlayWay = new PlayWay();
    });
</script>