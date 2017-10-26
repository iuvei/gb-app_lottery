<%--
  Created by IntelliJ IDEA.
  User: diego
  Date: 17-10-19
  Time: 下午4:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<input class="playPlIdBtn acti" data-pljs="20"  data-play_Code="pk10_qy_zhixuan"  data-play_id="pk10_zhixuan_qyfs" data-play_pl_id="复式" data-name="qyzxfs" data-fun_zhushu="zhushu_pk10_qy" data-fun_content="content_pk10_qy" data-fun_suiji="suiji_pk10_qy" type="hidden" />

<div id="subPage"></div>
<div id="subJRange"></div><script>
</script>
<script type="text/html" id="template_qyzxfs">
    <div class="Pick cl-1002 recl-1002" data-flag="fu">
        <p class="p1">
        <span class="fr fl cl-1001">
            从第一名中至少选择1个号码组成一注。
            <a><img src="${resRoot}/themes/default/img/ico60.png" alt="">选号规则
                <var>投注方案：01 开奖号码：01，02，03，04，05，06，07，08，09，10即可中前一直选。</var>
            </a>
            <a>
                <img src="${resRoot}/themes/default/img/ico61.png" alt="">中奖说明
                <var>从01-10中至少选择一个号码组成一注，所选号码与开奖号码第一位相同即中奖。</var>
            </a>
        </span>
        </p>
        <ul>
            <li data-name="冠军">
                <b><i>冠军</i></b>
                <var class="numLine">
                    <span><i>01</i></span>
                    <span><i>02</i></span>
                    <span><i>03</i></span>
                    <span><i>04</i></span>
                    <span><i>05</i></span>
                    <span><i>06</i></span>
                    <span><i>07</i></span>
                    <span><i>08</i></span>
                    <span><i>09</i></span>
                    <span><i>10</i></span>
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
    curl(['site/hall/pk10/FirstOne'], function(PlayWay) {
        page.PlayWay = new PlayWay();
    });
</script>