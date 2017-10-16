<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<div class="group">
    <ul>
        <li>
            <b style="width: 83px">大小单双</b>
            <p class="btn_fu_zhi dsdx-menu">
                <span class="playPlIdBtn acti" data-pljs="8"  data-play_Code="ssc_daxiaodanshuang_erxing" data-play_id="ssc_daxiaodanshuang_q2" data-play_pl_id="2" data-name="q2dxds" data-suiji_fun="suiji_q2dxds" data-fun_zhushu="zhushu_q2dxds" data-fun_content="content_q2dxds" data-fun_suiji="suiji_q2dxds"><a href="javascript:void(0)">前二大小单双</a></span>
                <span class="playPlIdBtn" data-pljs="8"  data-play_Code="ssc_daxiaodanshuang_erxing" data-play_id="ssc_daxiaodanshuang_h2" data-play_pl_id="2" data-name="h2dxds" data-suiji_fun="suiji_h2dxds" data-fun_zhushu="zhushu_h2dxds" data-fun_content="content_h2dxds" data-fun_suiji="suiji_h2dxds"><a href="javascript:void(0)">后二大小单双</a></span>
                <span class="playPlIdBtn" data-pljs="16"  data-play_Code="ssc_daxiaodanshuang_sanxing" data-play_id="ssc_daxiaodanshuang_q3" data-play_pl_id="3" data-name="q3dxds" data-suiji_fun="suiji_q3dxds" data-fun_zhushu="zhushu_q3dxds" data-fun_content="content_q3dxds" data-fun_suiji="suiji_q3dxds"><a href="javascript:void(0)">前三大小单双</a></span>
                <span class="playPlIdBtn" data-pljs="16"  data-play_Code="ssc_daxiaodanshuang_sanxing" data-play_id="ssc_daxiaodanshuang_h3" data-play_pl_id="3" data-name="h3dxds" data-suiji_fun="suiji_h3dxds" data-fun_zhushu="zhushu_h3dxds" data-fun_content="content_h3dxds" data-fun_suiji="suiji_h3dxds"><a href="javascript:void(0)">后三大小单双</a></span>
            </p>
        </li>
    </ul>
</div>
<div id="subPage"></div>
<div id="subJRange"></div>
<script type="text/html" id="template_q2dxds">
    <div class="Pick cl-1002 recl-1002 recl-1002-q2dxds">
        <p class="p1">
            <span class="fr fl cl-1001">
                从万位、千位中的“大、小、单、双”中至少各选一个组成一注。
                <a><img src="${resRoot}/themes/default/img/ico60.png" alt="">选号规则
                    <var>投注方案：小双 开奖号码：万、千位“小、双”，即中前二大小单双。</var>
                </a>
                <a>
                    <img src="${resRoot}/themes/default/img/ico61.png" alt="">中奖说明
                    <var>对万、千位的“大（56789）小（01234）、单（13579）双（02468）”形态进行购买，所选号码的位置、形态与开奖号码的位置、形态相同，即为中奖。</var>
                </a>
            </span>
        </p>
        <ul class="dxds">
            <li data-name="万">
                <b><i>万位</i></b>
                <var class="numLine">
                    <span><i>大</i></span>
                    <span><i>小</i></span>
                    <span><i>单</i></span>
                    <span><i>双</i></span>
                </var>
                <div class="clear re-5x-i">
                    <i onclick=" page.PlayWay.selectFun_1(this)">全</i>
                </div>
                <div class="clear re-5x-i">
                    <i onclick="page.PlayWay.selectFun_6(this)">清</i>
                </div>
            </li>
            <li data-name="千">
                <b><i>千位</i></b>
                <var class="numLine">
                    <span><i>大</i></span>
                    <span><i>小</i></span>
                    <span><i>单</i></span>
                    <span><i>双</i></span>
                </var>
                <div class="clear re-5x-i">
                    <i onclick=" page.PlayWay.selectFun_1(this)">全</i>
                </div>
                <div class="clear re-5x-i">
                    <i onclick="page.PlayWay.selectFun_6(this)">清</i>
                </div>
            </li>
        </ul>
    </div>
</script>
<script type="text/html" id="template_h2dxds">
    <div class="Pick cl-1002 recl-1003-h2dxds">
        <p class="p1">
            <span class="fr fl cl-1001">
                从十位、个位中的“大、小、单、双”中至少各选一个组成一注。
                <a><img src="${resRoot}/themes/default/img/ico60.png" alt="">选号规则
                    <var>投注方案：大单 开奖号码：十、个位“大单”，即中后二大小单双。</var>
                </a>
                <a>
                    <img src="${resRoot}/themes/default/img/ico61.png" alt="">中奖说明
                    <var>对十位和个位的“大（56789）小（01234）、单（13579）双（02468）”形态进行购买，所选号码的位置、形态与开奖号码的位置、形态相同，即为中奖。</var>
                </a>
            </span>
        </p>
        <ul class="dxds">
            <li data-name="十">
                <b><i>十位</i></b>
                <var class="numLine">
                    <span><i>大</i></span>
                    <span><i>小</i></span>
                    <span><i>单</i></span>
                    <span><i>双</i></span>
                </var>
                <div class="clear re-5x-i">
                    <i onclick="page.PlayWay.selectFun_6(this)">清</i>
                </div>
            </li>
            <li data-name="个">
                <b><i>个位</i></b>
                <var class="numLine">
                    <span><i>大</i></span>
                    <span><i>小</i></span>
                    <span><i>单</i></span>
                    <span><i>双</i></span>
                </var>
                <div class="clear re-5x-i">
                    <i onclick="page.PlayWay.selectFun_6(this)">清</i>
                </div>
            </li>
        </ul>
    </div>
</script>
<script type="text/html" id="template_q3dxds">
    <div class="Pick cl-1002 recl-1004-q3dxds">
        <p class="p1">
            <span class="fr fl cl-1001">
                从万位、千位、百位中的“大、小、单、双”中至少各选一个组成一注。
                <a><img src="${resRoot}/themes/default/img/ico60.png" alt="">选号规则
                    <var>投注方案：小双小 开奖号码：万、千、百位“小双小”，即中前三大小单双。</var>
                </a>
                <a>
                    <img src="${resRoot}/themes/default/img/ico61.png" alt="">中奖说明
                    <var>对万、千和百位的“大（56789）小（01234）、单（13579）双（02468）”形态进行购买，所选号码的位置、形态与开奖号码的位置、形态相同，即为中奖。</var>
                </a>
            </span>
        </p>
        <ul class="dxds">
            <li data-name="万">
                <b><i>万位</i></b>
                <var class="numLine">
                    <span><i>大</i></span>
                    <span><i>小</i></span>
                    <span><i>单</i></span>
                    <span><i>双</i></span>
                </var>
                <div class="clear re-5x-i">
                    <i onclick="page.PlayWay.selectFun_6(this)">清</i>
                </div>
            </li>
            <li data-name="千">
                <b><i>千位</i></b>
                <var class="numLine">
                    <span><i>大</i></span>
                    <span><i>小</i></span>
                    <span><i>单</i></span>
                    <span><i>双</i></span>
                </var>
                <div class="clear re-5x-i">
                    <i onclick="page.PlayWay.selectFun_6(this)">清</i>
                </div>
            </li>
            <li data-name="百">
                <b><i>百位</i></b>
                <var class="numLine">
                    <span><i>大</i></span>
                    <span><i>小</i></span>
                    <span><i>单</i></span>
                    <span><i>双</i></span>
                </var>
                <div class="clear re-5x-i">
                    <i onclick="page.PlayWay.selectFun_6(this)">清</i>
                </div>
            </li>
        </ul>
    </div>
</script>
<script type="text/html" id="template_h3dxds">
    <div class="Pick cl-1002 recl-1005-h3dxds">
        <p class="p1">
            <span class="fr fl cl-1001">
                从百位、十位、个位中的“大、小、单、双”中至少各选一个组成一注。
                <a><img src="${resRoot}/themes/default/img/ico60.png" alt="">选号规则
                    <var>投注方案：大单大 开奖号码：百、十、个位“大单大”，即中后三大小单双。</var>
                </a>
                <a>
                    <img src="${resRoot}/themes/default/img/ico61.png" alt="">中奖说明
                    <var>对百、十和个位的“大（56789）小（01234）、单（13579）双（02468）”形态进行购买，所选号码的位置、形态与开奖号码的位置、形态相同，即为中奖。</var>
                </a>
            </span>
        </p>
        <ul class="dxds">
            <li data-name="百">
                <b><i>百位</i></b>
                <var class="numLine">
                    <span><i>大</i></span>
                    <span><i>小</i></span>
                    <span><i>单</i></span>
                    <span><i>双</i></span>
                </var>
                <div class="clear re-5x-i">
                    <i onclick="page.PlayWay.selectFun_6(this)">清</i>
                </div>
            </li>
            <li data-name="十">
                <b><i>十位</i></b>
                <var class="numLine">
                    <span><i>大</i></span>
                    <span><i>小</i></span>
                    <span><i>单</i></span>
                    <span><i>双</i></span>
                </var>
                <div class="clear re-5x-i">
                    <i onclick="page.PlayWay.selectFun_6(this)">清</i>
                </div>
            </li>
            <li data-name="个">
                <b><i>个位</i></b>
                <var class="numLine">
                    <span><i>大</i></span>
                    <span><i>小</i></span>
                    <span><i>单</i></span>
                    <span><i>双</i></span>
                </var>
                <div class="clear re-5x-i">
                    <i onclick="page.PlayWay.selectFun_6(this)">清</i>
                </div>
            </li>
        </ul>
    </div>
</script>
<script type="text/javascript">
    curl(['site/hall/ssc/BigSmall'], function(PlayWay) {
        page.PlayWay = new PlayWay();
    });
</script>