<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<div class="group">
    <ul>
        <li>
            <b class="tit_img" >三星</b>
            <p>
                <span class="playPlIdBtn acti" data-pljs=""  data-play_Code="pl3_budingwei_sanxing" data-play_id="pl3_budingwei_sxym" data-play_pl_id="1" data-name="qsym" data-fun_zhushu="zhushu_qsym" data-fun_content="content_qsym" data-fun_suiji="suiji_qsym"><a href="javascript:void(0)">三星一码</a></span>
            </p>
        </li>
    </ul>
</div>

<div id="subPage"></div>
<div id="subJRange"></div>
<script type="text/html" id="template_qsym">
    <div class="Pick cl-1002 recl-1002" data-flag="qsym-budw">
        <p class="p1">
        <span class="fr fl cl-1001">
            从0-9中任意选择1个以上号码
            <a><img src="${resRoot}/themes/default/img/ico60.png" alt="">选号规则
                <var>投注方案：从0-9中任意选择1个以上号码</var>
            </a>
            <a>
                <img src="${resRoot}/themes/default/img/ico61.png" alt="">中奖说明
                <var>从0-9中选择1个号码，每注由1个号码组成，只要开奖号码的百位、十位、个位中包含所选号码，即为中奖。</var>
            </a>
        </span>
        </p>
        <ul>
            <li data-name="不定位">
                <b><i>不定位</i></b>
                <var class="numLine">
                    <span><i>0</i></span>
                    <span><i>1</i></span>
                    <span><i>2</i></span>
                    <span><i>3</i></span>
                    <span><i>4</i></span>
                    <span><i>5</i></span>
                    <span><i>6</i></span>
                    <span><i>7</i></span>
                    <span><i>8</i></span>
                    <span><i>9</i></span>
                </var>
                <div class="clear re-5x-i">
                    <i onclick="page.PlayWay.selectFun_1(this)">全</i>
                    <i onclick="page.PlayWay.selectFun_2(this)">大</i>
                    <i onclick="page.PlayWay.selectFun_3(this)">小</i>
                    <i onclick="page.PlayWay.selectFun_4(this)">奇</i>
                    <i onclick="page.PlayWay.selectFun_5(this)">偶</i>
                    <i onclick="page.PlayWay.selectFun_6(this)">清</i>
                </div>
            </li>
        </ul>
    </div>
</script>


<script type="text/javascript">
    curl(['site/hall/pl3/BuDingWei'], function(PlayWay) {
        page.PlayWay = new PlayWay();
    });
</script>