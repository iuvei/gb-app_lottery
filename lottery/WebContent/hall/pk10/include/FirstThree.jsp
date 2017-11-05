<%--
  Created by IntelliJ IDEA.
  User: diego
  Date: 17-10-19
  Time: 下午4:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<div class="group">
    <ul>
        <li>
            <b style="width: 83px">前三</b>
            <p class="btn_fu_zhi">
                <span class="playPlIdBtn acti" data-pljs="1440" data-play_Code="pk10_qs_zhixuan" data-play_id="pk10_zhixuan_qsfs" data-play_pl_id="复式" data-name="qszxfs" data-fun_zhushu="zhushu_qszxfs" data-fun_content="content_qszxfs" data-fun_suiji="suiji_qszxfs"><a href="javascript:void(0)">直选复式</a></span>
                <span class="playPlIdBtn"      data-pljs="1440" data-play_Code="pk10_qs_zhixuan" data-play_id="pk10_zhixuan_qsds" data-play_pl_id="单式" data-name="qszxds" data-fun_zhushu="zhushu_qszxds" data-fun_content="content_qszxds" data-fun_suiji="suiji_qszxds"><a href="javascript:void(0)">直选单式</a></span>
            </p>
        </li>
    </ul>
</div>

<div id="subPage"></div>
<div id="subJRange"></div><script>
</script>
<script type="text/html" id="template_qszxfs">
    <div class="Pick cl-1002 recl-1002" data-flag="fu">
        <p class="p1">
        <span class="fr fl cl-1001">
            从第一名，第二名，第三名中至少选择1个号码组成一注。
            <a><img src="${resRoot}/themes/default/img/ico60.png" alt="">选号规则
                <var>投注方案：冠军01 ，亚军02 ，季军03开奖号码：01，02，03，04，05，06，07，08，09，10即可中前三直选。</var>
            </a>
            <a>
                <img src="${resRoot}/themes/default/img/ico61.png" alt="">中奖说明
                <var>从冠军，亚军，季军位至少各选择一各号码组成一注，开奖号码中第一，第二，第三位与所选号按位相同，即为中奖。</var>
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
            <li data-name="亚军">
                <b><i>亚军</i></b>
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
            <li data-name="季军">
                <b><i>季军</i></b>
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

<script type="text/html" id="template_qszxds">
    <div class="Pick cl-1003 recl-1003">
        <p class="p1">
        <span class="fr fl cl-1001">
            手动输入号码，至少选择1个三位数号码组成一注
            <a><img src="${resRoot}/themes/default/img/ico60.png" alt="">选号规则
                <var>投注方案：冠军01 ，亚军02 ，季军03开奖号码：01，02，03，04，05，06，07，08，09，10即可中前三直选。</var>
            </a>
            <a>
                <img src="${resRoot}/themes/default/img/ico61.png" alt="">中奖说明
                <var>从冠军，亚军，季军位至少各选择一个号码组成一注，开奖号码中第一，第二，第三位与所选号按位相同，即为中奖。</var>
            </a>

        </span>
        </p>
        <div class="content_jiang">
            <textarea  id="textarea1" class="content_tex" autofocus></textarea>
            <div class="right con_j_end">
                <ul>
                    <li onclick="page.PlayWay.daoRu()"><a href="javascript:void(0)">导入文件</a></li>
                    <li onclick="page.PlayWay.clearTextarea()"><a href="javascript:void(0)">清空</a></li>
                </ul>
            </div>
        </div>

        <p class="rep1_zhushi">每注号码之间请使用逗号（，）、分号（；）或回车键隔开</p>
    </div>
</script>


<script type="text/javascript">
    curl(['site/hall/pk10/FirstThree'], function(PlayWay) {
        page.PlayWay = new PlayWay();
    });
</script>