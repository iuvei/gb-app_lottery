<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<div class="group">
    <ul>
        <li>
            <b style="width: 83px">任二直选</b>
            <p class="btn_fu_zhi">
                <span class="playPlIdBtn acti" data-pljs="200"  data-play_Code="ssc_renxuan4_zhixuan" data-play_id="ssc_renxuan2_zxfs" data-play_pl_id="复式" data-name="rx2zxfs" data-fun_zhushu="zhushu_rx2zxfs" data-fun_content="content_rx2zxfs" data-fun_suiji="suiji_rx2zxfs"><a href="javascript:void(0)">直选复式</a></span>
                <span class="playPlIdBtn" data-pljs="200"  data-play_Code="ssc_renxuan4_zhixuan" data-play_id="ssc_renxuan2_zxds" data-play_pl_id="单式" data-name="rx2zxds" data-fun_zhushu="zhushu_rx2zxds" data-fun_content="content_rx2zxds" data-fun_suiji="suiji_rx2zxds"><a href="javascript:void(0)">直选单式</a></span>
                <span class="playPlIdBtn" data-pljs="200"  data-play_Code="ssc_renxuan4_zhixuan" data-play_id="ssc_renxuan2_zxhz" data-play_pl_id="和值" data-name="rx2zxhz" data-fun_zhushu="zhushu_rx2zxhz" data-fun_content="content_rx2zxhz" data-fun_suiji="suiji_rx2zxhz"><a href="javascript:void(0)">直选和值</a></span>
            </p>
        </li>
        <li>
            <b style="width: 83px">任二组选</b>
            <p class="btn_fu_zhi">
                <span class="playPlIdBtn" data-pljs="100"  data-play_Code="ssc_renxuan2_zuxuan" data-play_id="ssc_renxuan2_zuxfs" data-play_pl_id="复式" data-name="rx2zuxfs" data-fun_zhushu="zhushu_rx2zuxfs" data-fun_content="content_rx2zuxfs" data-fun_suiji="suiji_rx2zuxfs"><a href="javascript:void(0)">组选复式</a></span>
                <span class="playPlIdBtn" data-pljs="100"  data-play_Code="ssc_renxuan2_zuxuan" data-play_id="ssc_renxuan2_zuxds" data-play_pl_id="单式" data-name="rx2zuxds" data-fun_zhushu="zhushu_rx2zuxds" data-fun_content="content_rx2zuxds" data-fun_suiji="suiji_rx2zuxds"><a href="javascript:void(0)">组选单式</a></span>
                <span class="playPlIdBtn" data-pljs="100"  data-play_Code="ssc_renxuan2_zuxuan" data-play_id="ssc_renxuan2_zuxhz" data-play_pl_id="和值" data-name="rx2zuxhz" data-fun_zhushu="zhushu_rx2zuxhz" data-fun_content="content_rx2zuxhz" data-fun_suiji="suiji_rx2zuxhz"><a href="javascript:void(0)">组选和值</a></span>
            </p>
        </li>
    </ul>
</div>

<div id="subPage"></div>
<div id="subJRange"></div>
<script type="text/html" id="template_rx2zxfs">
    <div class="Pick cl-1002 recl-1002" data-flag="rx2-zxfs">
        <p class="p1">
        <span class="fr fl cl-1001">
           从万位、千位、百位、十位、个位中至少两位上各选1个号码组成一注。
            <a><img src="${resRoot}/themes/default/img/ico60.png" alt="">选号规则
                <var>投注方案：万位5，百位8 开奖号码：51812，即中任二直选。</var>
            </a>
            <a>
                <img src="${resRoot}/themes/default/img/ico61.png" alt="">中奖说明
                <var>从万、千、百、十、个位中至少选择两个位置，至少各选1个号码组成一注，所选号码与开奖号码的指定位置上的号码相同，且顺序一致，即为中奖。</var>
            </a>
        </span>
        </p>
        <ul>
            <li data-name="万">
                <b><i>万位</i></b>
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
            <li data-name="千">
                <b><i>千位</i></b>
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
            <li data-name="百">
                <b><i>百位</i></b>
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
            <li data-name="十">
                <b><i>十位</i></b>
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
            <li data-name="个">
                <b><i>个位</i></b>
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

<script type="text/html" id="template_rx2zxds">
    <div class="Pick cl-1003 recl-1003-zxds">
        <p class="p1">
        <span class="fr fl cl-1001">
            从万位、千位、百位、十位、个位中至少选择两个位置,至少手动输入一个两位数的号码构成一注。
            <a><img src="${resRoot}/themes/default/img/ico60.png" alt="">选号规则
                <var>投注方案：位置选择万、百位，输入号码58 开奖号码：51812，即中任二直选(单式)。</var>
            </a>
            <a>
                <img src="${resRoot}/themes/default/img/ico61.png" alt="">中奖说明
                <var>从万、千、百、十、个位中至少选择两个位置,至少手动输入一个两位数的号码构成一注，所选号码与开奖号码的指定位置上的号码相同，且顺序一致，即为中奖。</var>
            </a>

        </span>
        </p>
        <div class="selposition re-select-ds" data-flag="wei-r2" data-name="ds">
            <label for="position_ds_0"><input type="checkbox" class="selpositioninput" name="position_ds" id="position_ds_0" value="1"/>万位</label>
            <label for="position_ds_1"><input type="checkbox" class="selpositioninput" name="position_ds" id="position_ds_1" value="2"/>千位</label>
            <label for="position_ds_2"><input type="checkbox" class="selpositioninput" name="position_ds" id="position_ds_2" value="3"/>百位</label>
            <label for="position_ds_3"><input type="checkbox" class="selpositioninput" name="position_ds" checked="checked" id="position_ds_3" value="4"/>十位</label>
            <label for="position_ds_4"><input type="checkbox" class="selpositioninput" name="position_ds" checked="checked" id="position_ds_4" value="5"/>个位</label>
            <span class="rxdesc">
                    <b class="rx-b-ts">温馨提示：</b>
                    你选择了
                    <b class="rx-b-hao">
                       <var id="positioncount-ds" class="rxcount">2</var>
                    </b>
                     个位置，系统自动根据位置组合成
                    <b class="rx-b-hao">
                       <var id="positioninfo-ds" class="rxcount">1</var>
                    </b>
                     个方案。
                </span>
        </div>
        <div class="content_jiang">
            <textarea  id="textarea1" class="content_tex" autofocus></textarea>
            <div class="right con_j_end">
                <ul>
                    <li onclick="page.PlayWay.delRrepet(this)"><a href="javascript:void(0)">删除重复号</a></li>
                    <li onclick="page.PlayWay.daoRu()"><a href="javascript:void(0)">导入文件</a></li>
                    <li onclick="page.PlayWay.clearTextarea()"><a href="javascript:void(0)">清空</a></li>
                </ul>
            </div>
        </div>

        <p class="rep1_zhushi">每一注号码之间请用一个 空格[ ]、逗号[,] 或者 分号[;] 隔开</p>
    </div>
</script>

<script type="text/html" id="template_rx2zxhz">
    <div class="Pick cl-1002 recl-1004-zxhz">
        <p class="p1">
        <span class="fr fl cl-1001">
            从万位、千位、百位、十位、个位中至少选择两个位置,至少选择一个和值号码构成一注。
            <a><img src="${resRoot}/themes/default/img/ico60.png" alt="">选号规则
                <var>投注方案：位置选择万、百位，选择和值号码13 开奖号码：51812，即中任二直选和值。</var>
            </a>
            <a>
                <img src="${resRoot}/themes/default/img/ico61.png" alt="">中奖说明
                <var>从万、千、百、十、个位中至少选择两个位置,至少选择一个和值号码构成一注，所选两个位置的开奖号码相加之和与所选和值一致，即为中奖。</var>
            </a>
        </span>
        </p>
        <ul>
            <li class="re2-1004-li">
                <div class="selposition recl-1004-hz" data-flag="wei-r2" data-name="hz">
                    <label for="position_0"><input type="checkbox" class="selpositioninput" name="position_hz"
                                                   id="position_0" value="1"/>万位</label>
                    <label for="position_1"><input type="checkbox" class="selpositioninput" name="position_hz"
                                                   id="position_1" value="2"/>千位</label>
                    <label for="position_2"><input type="checkbox" class="selpositioninput" name="position_hz"
                                                   id="position_2" value="3"/>百位</label>
                    <label for="position_3"><input type="checkbox" class="selpositioninput" name="position_hz"
                                                   checked="checked" id="position_3" value="4"/>十位</label>
                    <label for="position_4"><input type="checkbox" class="selpositioninput" name="position_hz"
                                                   checked="checked" id="position_4" value="5"/>个位</label>
                    <span class="rxdesc">
                    <b class="rx-b-ts">温馨提示：</b>
                    你选择了
                    <b class="rx-b-hao">
                       <var id="positioncount-hz" class="rxcount">2</var>
                    </b>
                     个位置，系统自动根据位置组合成
                    <b class="rx-b-hao">
                       <var id="positioninfo-hz" class="rxcount">1</var>
                    </b>
                     个方案。
                </span>
                </div>
            </li>
            <li data-name="和值" class="hz-q2 re-zxhz-rx2 rehz-q2">
                <b class="hz-dir"><i>和值</i></b>
                <var class="numLine renumHeigth">
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
                <var class="numLine renumHeigth">
                    <span><i>10</i></span>
                    <span><i>11</i></span>
                    <span><i>12</i></span>
                    <span><i>13</i></span>
                    <span><i>14</i></span>
                    <span><i>15</i></span>
                    <span><i>16</i></span>
                    <span><i>17</i></span>
                    <span><i>18</i></span>
                </var>
            </li>
        </ul>
    </div>
</script>

<script type="text/html" id="template_rx2zuxfs">
    <div class="Pick cl-1002 recl-1005-zuxfs">
        <p class="p1">
        <span class="fr fl cl-1001">
            从万位、千位、百位、十位、个位中至少选择两个位置,号码区至少选择两个号码构成一注。
            <a><img src="${resRoot}/themes/default/img/ico60.png" alt="">选号规则
                <var>投注方案：位置选择万、百位，选择号码85 开奖号码：51812或者81512，即中任二组选。</var>
            </a>
            <a>
                <img src="${resRoot}/themes/default/img/ico61.png" alt="">中奖说明
                <var>从万、千、百、十、个位中至少选择两个位置,至少选择两个号码构成一注，所选号码与开奖号码的指定位置上的号码相同，且顺序不限，即为中奖。</var>
            </a>
        </span>
        </p>
        <ul>
            <li class="re2-1004-li">
                <div class="selposition recl-1005-fs" data-flag="wei-r2" data-name="zufs">
                    <label for="position_zux0"><input type="checkbox" class="selpositioninput" name="position_zufs"
                                                      id="position_zux0" value="1"/>万位</label>
                    <label for="position_zux1"><input type="checkbox" class="selpositioninput" name="position_zufs"
                                                      id="position_zux1" value="2"/>千位</label>
                    <label for="position_zux2"><input type="checkbox" class="selpositioninput" name="position_zufs"
                                                      id="position_zux2" value="3"/>百位</label>
                    <label for="position_zux3"><input type="checkbox" class="selpositioninput" name="position_zufs"
                                                      checked="checked" id="position_zux3" value="4"/>十位</label>
                    <label for="position_zux4"><input type="checkbox" class="selpositioninput" name="position_zufs"
                                                      checked="checked" id="position_zux4" value="5"/>个位</label>
                    <span class="rxdesc">
                    <b class="rx-b-ts">温馨提示：</b>
                    你选择了
                    <b class="rx-b-hao">
                       <var id="positioncount-zufs" class="rxcount">2</var>
                    </b>
                     个位置，系统自动根据位置组合成
                    <b class="rx-b-hao">
                       <var id="positioninfo-zufs" class="rxcount">1</var>
                    </b>
                     个方案。
                </span>
                </div>
            </li>
            <li data-name="组选">
                <b><i>组选</i></b>
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

<script type="text/html" id="template_rx2zuxds">
    <div class="Pick cl-1003 recl-1006-zuxds">
        <p class="p1">
        <span class="fr fl cl-1001">
            从万位、千位、百位、十位、个位中至少选择两个位置,至少手动输入一个两位数的号码构成一注。
            <a><img src="${resRoot}/themes/default/img/ico60.png" alt="">选号规则
                <var>投注方案：位置选择万、百位，输入号码85 开奖号码：51812或者81512，即中任二组选(单式)。</var>
            </a>
            <a>
                <img src="${resRoot}/themes/default/img/ico61.png" alt="">中奖说明
                <var>从万、千、百、十、个位中至少选择两个位置,至少手动输入一个两位数的号码构成一注，所选号码与开奖号码的指定位置上的号码相同，且顺序不限，即为中奖。</var>
            </a>

        </span>
        </p>
        <div class="selposition re-select-zuxds" data-flag="wei-r2" data-name="zuds">
            <label for="position_zuds_0"><input type="checkbox" class="selpositioninput" name="position_zuds"
                                                id="position_zuds_0" value="1"/>万位</label>
            <label for="position_zuds_1"><input type="checkbox" class="selpositioninput" name="position_zuds"
                                                id="position_zuds_1" value="2"/>千位</label>
            <label for="position_zuds_2"><input type="checkbox" class="selpositioninput" name="position_zuds"
                                                id="position_zuds_2" value="3"/>百位</label>
            <label for="position_zuds_3"><input type="checkbox" class="selpositioninput" name="position_zuds"
                                                checked="checked" id="position_zuds_3" value="4"/>十位</label>
            <label for="position_zuds_4"><input type="checkbox" class="selpositioninput" name="position_zuds"
                                                checked="checked" id="position_zuds_4" value="5"/>个位</label>
            <span class="rxdesc">
                    <b class="rx-b-ts">温馨提示：</b>
                    你选择了
                    <b class="rx-b-hao">
                       <var id="positioncount-zuds" class="rxcount">2</var>
                    </b>
                     个位置，系统自动根据位置组合成
                    <b class="rx-b-hao">
                       <var id="positioninfo-zuds" class="rxcount">1</var>
                    </b>
                     个方案。
                </span>
        </div>
        <div class="content_jiang">
            <textarea class="content_tex" autofocus></textarea>
            <div class="right con_j_end">
                <ul>
                    <li onclick="page.PlayWay.delRrepet(this)"><a href="javascript:void(0)">删除重复号</a></li>
                    <li onclick="page.PlayWay.daoRu()"><a href="javascript:void(0)">导入文件</a></li>
                    <li onclick="page.PlayWay.clearTextarea()"><a href="javascript:void(0)">清空</a></li>
                </ul>
            </div>
        </div>

        <p class="rep1_zhushi">每一注号码之间请用一个 空格[ ]、逗号[,] 或者 分号[;] 隔开</p>
    </div>
</script>

<script type="text/html" id="template_rx2zuxhz">
    <div class="Pick cl-1002 recl-1007-zuxhz">
        <p class="p1">
        <span class="fr fl cl-1001">
            从万位、千位、百位、十位、个位中至少选择两个位置,至少选择一个和值号码构成一注。
            <a><img src="${resRoot}/themes/default/img/ico60.png" alt="">选号规则
                <var>投注方案：位置选择万、百位，选择和值号码13 开奖号码：51812，即中任二组选和值。</var>
            </a>
            <a>
                <img src="${resRoot}/themes/default/img/ico61.png" alt="">中奖说明
                <var>从万、千、百、十、个位中至少选择两个位置,至少选择一个和值号码构成一注，所选两个位置的开奖号码相加之和与所选和值一致(不含对子号)，即为中奖。</var>
            </a>
        </span>
        </p>
        <ul>
            <li class="re2-1004-li">
                <div class="selposition re-select-zuxhz" data-flag="wei-r2" data-name="zuhz">
                    <label for="position_zuxhz0"><input type="checkbox" class="selpositioninput" name="position_zuxhz"
                                                        id="position_zuxhz0" value="1"/>万位</label>
                    <label for="position_zuxhz1"><input type="checkbox" class="selpositioninput" name="position_zuxhz"
                                                        id="position_zuxhz1" value="2"/>千位</label>
                    <label for="position_zuxhz2"><input type="checkbox" class="selpositioninput" name="position_zuxhz"
                                                        id="position_zuxhz2" value="3"/>百位</label>
                    <label for="position_zuxhz3"><input type="checkbox" class="selpositioninput" name="position_zuxhz"
                                                        checked="checked" id="position_zuxhz3" value="4"/>十位</label>
                    <label for="position_zuxhz4"><input type="checkbox" class="selpositioninput" name="position_zuxhz"
                                                        checked="checked" id="position_zuxhz4" value="5"/>个位</label>
                    <span class="rxdesc">
                    <b class="rx-b-ts">温馨提示：</b>
                    你选择了
                    <b class="rx-b-hao">
                       <var id="positioncount-zuhz" class="rxcount">2</var>
                    </b>
                     个位置，系统自动根据位置组合成
                    <b class="rx-b-hao">
                       <var id="positioninfo-zuhz" class="rxcount">1</var>
                    </b>
                     个方案。
                </span>
                </div>
            </li>
            <li data-name="和值" class="hz-q2 re-zuxhz-rx2">
                <b><i>和值</i></b>
                <var class="numLine renumHeigth">
                    <span><i>1</i></span>
                    <span><i>2</i></span>
                    <span><i>3</i></span>
                    <span><i>4</i></span>
                    <span><i>5</i></span>
                    <span><i>6</i></span>
                    <span><i>7</i></span>
                    <span><i>8</i></span>
                    <span><i>9</i></span>
                    <span><i>10</i></span>
                    <span><i>11</i></span>
                    <span><i>12</i></span>
                    <span><i>13</i></span>
                    <span><i>14</i></span>
                    <span><i>15</i></span>
                    <span><i>16</i></span>
                    <span><i>17</i></span>
                </var>
            </li>
        </ul>
    </div>
</script>

<script type="text/javascript">
    curl(['site/hall/ssc/OptionalTwo'], function(PlayWay) {
        page.PlayWay = new PlayWay();
    });
</script>