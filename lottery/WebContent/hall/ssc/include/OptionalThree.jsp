<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<div class="group">
    <ul>
        <li>
            <b style="width: 83px">任三直选</b>
            <p class="btn_fu_zhi">
                <span class="playPlIdBtn acti" data-pljs="2000"  data-play_Code="ssc_renxuan3_zhixuan" data-play_id="ssc_renxuan3_zxfs" data-play_pl_id="复式" data-name="rx3zxfs" data-fun_zhushu="zhushu_rx3zxfs" data-fun_content="content_rx3zxfs" data-fun_suiji="suiji_rx3zxfs"><a href="javascript:void(0)">直选复式</a></span>
                <span class="playPlIdBtn" data-pljs="2000"  data-play_Code="ssc_renxuan3_zhixuan" data-play_id="ssc_renxuan3_zxds" data-play_pl_id="单式" data-name="rx3zxds" data-fun_zhushu="zhushu_rx3zxds" data-fun_content="content_rx3zxds" data-fun_suiji="suiji_rx3zxds"><a href="javascript:void(0)">直选单式</a></span>
                <span class="playPlIdBtn" data-pljs="2000"  data-play_Code="ssc_renxuan3_zhixuan" data-play_id="ssc_renxuan3_zxhz" data-play_pl_id="和值" data-name="rx3zxhz" data-fun_zhushu="zhushu_rx3zxhz" data-fun_content="content_rx3zxhz" data-fun_suiji="suiji_rx3zxhz"><a href="javascript:void(0)">直选和值</a></span>
            </p>
        </li>
        <li>
            <b style="width: 83px">任三组选</b>
            <p class="btn_fu_zhi">
                <span class="playPlIdBtn" data-pljs="666.67"  data-play_Code="ssc_renxuan3_zuxuan" data-play_id="ssc_renxuan3_z3fs" data-play_pl_id="复式" data-name="rx3z3fs" data-fun_zhushu="zhushu_rx3z3fs" data-fun_content="content_rx3z3fs" data-fun_suiji="suiji_rx3z3fs"><a href="javascript:void(0)">组三复式</a></span>
                <span class="playPlIdBtn" data-pljs="666.67"  data-play_Code="ssc_renxuan3_zuxuan" data-play_id="ssc_renxuan3_z3ds" data-play_pl_id="单式" data-name="rx3z3ds" data-fun_zhushu="zhushu_rx3z3ds" data-fun_content="content_rx3z3ds" data-fun_suiji="suiji_rx3z3ds"><a href="javascript:void(0)">组三单式</a></span>
                <span class="playPlIdBtn" data-pljs="333.33"  data-play_Code="ssc_renxuan3_zuxuan" data-play_id="ssc_renxuan3_z6fs" data-play_pl_id="复式" data-name="rx3z6fs" data-fun_zhushu="zhushu_rx3z6fs" data-fun_content="content_rx3z6fs" data-fun_suiji="suiji_rx3z6fs"><a href="javascript:void(0)">组六复式</a></span>
                <span class="playPlIdBtn" data-pljs="333.33"  data-play_Code="ssc_renxuan3_zuxuan" data-play_id="ssc_renxuan3_z6ds" data-play_pl_id="单式" data-name="rx3z6ds" data-fun_zhushu="zhushu_rx3z6ds" data-fun_content="content_rx3z6ds" data-fun_suiji="suiji_rx3z6ds"><a href="javascript:void(0)">组六单式</a></span>
                <span class="playPlIdBtn" data-pljs="666.67|333.33"  data-play_Code="ssc_renxuan3_zuxuan" data-play_id="ssc_renxuan3_hhzx" data-play_pl_id="组三|组六" data-name="rx3hhzux" data-fun_zhushu="zhushu_rx3hhzux" data-fun_content="content_rx3hhzux" data-fun_suiji="suiji_rx3hhzux"><a href="javascript:void(0)">混合组选</a></span>
                <span class="playPlIdBtn" data-pljs="666.67|333.33"  data-play_Code="ssc_renxuan3_zuxuan" data-play_id="ssc_renxuan3_zuxhz" data-play_pl_id="组三|组六" data-name="rx3zuxhz" data-fun_zhushu="zhushu_rx3zuxhz" data-fun_content="content_rx3zuxhz" data-fun_suiji="suiji_rx3zuxhz"><a href="javascript:void(0)">组选和值</a></span>
            </p>
        </li>
    </ul>
</div>
<div id="subPage"></div>
<div id="subJRange"></div>
<script type="text/html" id="template_rx3zxfs">
    <div class="Pick cl-1002 recl-1002" data-flag="rx3-zxfs">
        <p class="p1">
        <span class="fr fl cl-1001">
           从万位、千位、百位、十位、个位中至少三位上各选1个号码组成一注。
            <a><img src="${resRoot}/themes/default/img/ico60.png" alt="">选号规则
                <var>投注方案：万位5，百位8,个位2 开奖号码：51812，即中任三直选。</var>
            </a>
            <a>
                <img src="${resRoot}/themes/default/img/ico61.png" alt="">中奖说明
                <var>从万、千、百、十、个位中至少选择三个位置，至少各选1个号码组成一注，所选号码与开奖号码的指定位置上的号码相同，且顺序一致，即为中奖。</var>
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

<script type="text/html" id="template_rx3zxds">
    <div class="Pick cl-1003 recl-1003-zxds">
        <p class="p1">
        <span class="fr fl cl-1001">
            从万位、千位、百位、十位、个位中至少选择三个位置,至少手动输入一个三位数的号码构成一注。
            <a><img src="${resRoot}/themes/default/img/ico60.png" alt="">选号规则
                <var>投注方案：位置选择万、百,个位，输入号码582 开奖号码：51812，即中任三直选(单式)。</var>
            </a>
            <a>
                <img src="${resRoot}/themes/default/img/ico61.png" alt="">中奖说明
                <var>从万、千、百、十、个位中至少选择三个位置,至少手动输入一个三位数的号码构成一注，所选号码与开奖号码的指定位置上的号码相同，且顺序一致，即为中奖。</var>
            </a>

        </span>
        </p>
        <div class="selposition re-select-ds" data-flag="wei-r3" data-name="ds">
            <label for="position_ds_0"><input type="checkbox" class="selpositioninput" name="position_ds" id="position_ds_0" value="1"/>万位</label>
            <label for="position_ds_1"><input type="checkbox" class="selpositioninput" name="position_ds" id="position_ds_1" value="2"/>千位</label>
            <label for="position_ds_2"><input type="checkbox" class="selpositioninput" name="position_ds" checked="checked" id="position_ds_2" value="3"/>百位</label>
            <label for="position_ds_3"><input type="checkbox" class="selpositioninput" name="position_ds" checked="checked" id="position_ds_3" value="4"/>十位</label>
            <label for="position_ds_4"><input type="checkbox" class="selpositioninput" name="position_ds" checked="checked" id="position_ds_4" value="5"/>个位</label>
            <span class="rxdesc">
                    <b class="rx-b-ts">温馨提示：</b>
                    你选择了
                    <b class="rx-b-hao">
                       <var id="positioncount-ds" class="rxcount">3</var>
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

<script type="text/html" id="template_rx3zxhz">
    <div class="Pick cl-1002 recl-1004-zxhz">
        <p class="p1">
        <span class="fr fl cl-1001">
            从万位、千位、百位、十位、个位中至少选择三个位置,至少选择一个和值号码构成一注。
            <a><img src="${resRoot}/themes/default/img/ico60.png" alt="">选号规则
                <var>投注方案：位置选择万、百、个位，选择和值号码15 开奖号码：51812，即中任三直选和值。</var>
            </a>
            <a>
                <img src="${resRoot}/themes/default/img/ico61.png" alt="">中奖说明
                <var>从万、千、百、十、个位中至少选择三个位置,至少选择一个和值号码构成一注，所选三个位置的开奖号码相加之和与所选和值一致，即为中奖。</var>
            </a>
        </span>
        </p>
        <ul>
            <li class="re2-1004-li">
                <div class="selposition recl-1004-hz" data-flag="wei-r3" data-name="hz">
                    <label for="position_0"><input type="checkbox" class="selpositioninput" name="position_hz" id="position_0" value="1"/>万位</label>
                    <label for="position_1"><input type="checkbox" class="selpositioninput" name="position_hz" id="position_1" value="2"/>千位</label>
                    <label for="position_2"><input type="checkbox" class="selpositioninput" name="position_hz" checked="checked" id="position_2" value="3"/>百位</label>
                    <label for="position_3"><input type="checkbox" class="selpositioninput" name="position_hz" checked="checked" id="position_3" value="4"/>十位</label>
                    <label for="position_4"><input type="checkbox" class="selpositioninput" name="position_hz" checked="checked" id="position_4" value="5"/>个位</label>
                    <span class="rxdesc">
                    <b class="rx-b-ts">温馨提示：</b>
                    你选择了
                    <b class="rx-b-hao">
                       <var id="positioncount-hz" class="rxcount">3</var>
                    </b>
                     个位置，系统自动根据位置组合成
                    <b class="rx-b-hao">
                       <var id="positioninfo-hz" class="rxcount">1</var>
                    </b>
                     个方案。
                </span>
                </div>
            </li>
            <li data-name="和值" class="hz-rx3 li1005_hezhi">
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
                    <span><i>10</i></span>
                    <span><i>11</i></span>
                    <span><i>12</i></span>
                    <span><i>13</i></span>
                </var>
                <var class="numLine renumHeigth">
                    <span><i>14</i></span>
                    <span><i>15</i></span>
                    <span><i>16</i></span>
                    <span><i>17</i></span>
                    <span><i>18</i></span>
                    <span><i>19</i></span>
                    <span><i>20</i></span>
                    <span><i>21</i></span>
                    <span><i>22</i></span>
                    <span><i>23</i></span>
                    <span><i>24</i></span>
                    <span><i>25</i></span>
                    <span><i>26</i></span>
                    <span><i>27</i></span>
                </var>
            </li>
        </ul>
    </div>
</script>

<script type="text/html" id="template_rx3z3fs">
    <div class="Pick cl-1002 recl-1005-zu3fs">
        <p class="p1">
        <span class="fr fl cl-1001">
            从万位、千位、百位、十位、个位中至少选择三个位置,号码区至少选择两个号码构成一注。
            <a><img src="${resRoot}/themes/default/img/ico60.png" alt="">选号规则
                <var>投注方案：位置选择万、十、个位,选择号码12 开奖号码：11812，即中任三组三。</var>
            </a>
            <a>
                <img src="${resRoot}/themes/default/img/ico61.png" alt="">中奖说明
                <var>从万、千、百、十、个位中至少选择三个位置,至少选择两个号码构成两注，所选号码与开奖号码的指定位置上的号码相同，且顺序不限，即为中奖。</var>
            </a>
        </span>
        </p>
        <ul>
            <li class="re2-1004-li">
                <div class="selposition recl-1005-zu3Rx3" data-flag="wei-r3" data-name="zu3fs">
                    <label for="position_zux0"><input type="checkbox" class="selpositioninput" name="position_zu3fs" id="position_zux0" value="1"/>万位</label>
                    <label for="position_zux1"><input type="checkbox" class="selpositioninput" name="position_zu3fs" id="position_zux1" value="2"/>千位</label>
                    <label for="position_zux2"><input type="checkbox" class="selpositioninput" name="position_zu3fs" checked="checked" id="position_zux2" value="3"/>百位</label>
                    <label for="position_zux3"><input type="checkbox" class="selpositioninput" name="position_zu3fs" checked="checked" id="position_zux3" value="4"/>十位</label>
                    <label for="position_zux4"><input type="checkbox" class="selpositioninput" name="position_zu3fs" checked="checked" id="position_zux4" value="5"/>个位</label>
                    <span class="rxdesc">
                    <b class="rx-b-ts">温馨提示：</b>
                    你选择了
                    <b class="rx-b-hao">
                       <var id="positioncount-zu3fs" class="rxcount">3</var>
                    </b>
                     个位置，系统自动根据位置组合成
                    <b class="rx-b-hao">
                       <var id="positioninfo-zu3fs" class="rxcount">1</var>
                    </b>
                     个方案。
                </span>
                </div>
            </li>
            <li data-name="组三">
                <b><i>组三</i></b>
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

<script type="text/html" id="template_rx3z3ds">
    <div class="Pick cl-1003 recl-1006-zu3ds">
        <p class="p1">
        <span class="fr fl cl-1001">
            从万位、千位、百位、十位、个位中至少选择三个位置,手动至少输入三个号码构成一注。
            <a><img src="${resRoot}/themes/default/img/ico60.png" alt="">选号规则
                <var>投注方案：位置选择万、十、个位,输入号码112 开奖号码：11812，即中任三组三(单式)。</var>
            </a>
            <a>
                <img src="${resRoot}/themes/default/img/ico61.png" alt="">中奖说明
                <var>从万、千、百、十、个位中至少选择三个位置,至少手动输入三个号码构成一注，三个数字中必须有二个数字相同，所选号码与开奖号码的指定位置上的号码相同，且顺序不限，即为中奖。</var>
            </a>

        </span>
        </p>
        <div class="selposition re-select-zu3ds" data-flag="wei-r3" data-name="zu3ds">
            <label for="position_zu3ds_0"><input type="checkbox" class="selpositioninput" name="position_zu3ds" id="position_zu3ds_0" value="1"/>万位</label>
            <label for="position_zu3ds_1"><input type="checkbox" class="selpositioninput" name="position_zu3ds" id="position_zu3ds_1" value="2"/>千位</label>
            <label for="position_zu3ds_2"><input type="checkbox" class="selpositioninput" name="position_zu3ds" checked="checked" id="position_zu3ds_2" value="3"/>百位</label>
            <label for="position_zu3ds_3"><input type="checkbox" class="selpositioninput" name="position_zu3ds" checked="checked" id="position_zu3ds_3" value="4"/>十位</label>
            <label for="position_zu3ds_4"><input type="checkbox" class="selpositioninput" name="position_zu3ds" checked="checked" id="position_zu3ds_4" value="5"/>个位</label>
            <span class="rxdesc">
                    <b class="rx-b-ts">温馨提示：</b>
                    你选择了
                    <b class="rx-b-hao">
                       <var id="positioncount-zu3ds" class="rxcount">3</var>
                    </b>
                     个位置，系统自动根据位置组合成
                    <b class="rx-b-hao">
                       <var id="positioninfo-zu3ds" class="rxcount">1</var>
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

<script type="text/html" id="template_rx3z6fs">
    <div class="Pick cl-1002 recl-1007-zu6fs">
        <p class="p1">
        <span class="fr fl cl-1001">
            从万位、千位、百位、十位、个位中至少选择三个位置,号码区至少选择三个号码构成一注。
            <a><img src="${resRoot}/themes/default/img/ico60.png" alt="">选号规则
                <var>投注方案：位置选择万、十、个位,选择号码512 开奖号码：51812，即中任三组六。</var>
            </a>
            <a>
                <img src="${resRoot}/themes/default/img/ico61.png" alt="">中奖说明
                <var>从万、千、百、十、个位中至少选择三个位置,至少选择三个号码构成一注，所选号码与开奖号码的指定位置上的号码相同，且顺序不限，即为中奖。</var>
            </a>
        </span>
        </p>
        <ul>
            <li class="re2-1004-li">
                <div class="selposition recl-1005-fs re-select-zu6fs" data-flag="wei-r3" data-name="zu6fs">
                    <label for="position_zu6fs0"><input type="checkbox" class="selpositioninput" name="position_zu6fs" id="position_zu6fs0" value="1"/>万位</label>
                    <label for="position_zu6fs1"><input type="checkbox" class="selpositioninput" name="position_zu6fs" id="position_zu6fs1" value="2"/>千位</label>
                    <label for="position_zu6fs2"><input type="checkbox" class="selpositioninput" name="position_zu6fs" checked="checked" id="position_zu6fs2" value="3"/>百位</label>
                    <label for="position_zu6fs3"><input type="checkbox" class="selpositioninput" name="position_zu6fs" checked="checked" id="position_zu6fs3" value="4"/>十位</label>
                    <label for="position_zu6fs4"><input type="checkbox" class="selpositioninput" name="position_zu6fs" checked="checked" id="position_zu6fs4" value="5"/>个位</label>
                    <span class="rxdesc">
                    <b class="rx-b-ts">温馨提示：</b>
                    你选择了
                    <b class="rx-b-hao">
                       <var id="positioncount-zu6fs" class="rxcount">3</var>
                    </b>
                     个位置，系统自动根据位置组合成
                    <b class="rx-b-hao">
                       <var id="positioninfo-zu6fs" class="rxcount">1</var>
                    </b>
                     个方案。
                </span>
                </div>
            </li>
            <li data-name="组六">
                <b><i>组六</i></b>
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

<script type="text/html" id="template_rx3z6ds">
    <div class="Pick cl-1003 recl-1008-zu6ds">
        <p class="p1">
        <span class="fr fl cl-1001">
            从万位、千位、百位、十位、个位中至少选择三个位置,手动至少输入三个号码构成一注。
            <a><img src="${resRoot}/themes/default/img/ico60.png" alt="">选号规则
                <var>投注方案：位置选择万、十、个位,输入号码512 开奖号码：51812，即中任三组六(单式)。</var>
            </a>
            <a>
                <img src="${resRoot}/themes/default/img/ico61.png" alt="">中奖说明
                <var>从万、千、百、十、个位中至少选择三个位置,至少手动输入三个号码构成一注，所选号码与开奖号码的指定位置上的号码相同，且顺序不限，即为中奖。</var>
            </a>

        </span>
        </p>
        <div class="selposition re-select-zu6ds" data-flag="wei-r3" data-name="zu6ds">
            <label for="position_zu6ds_0"><input type="checkbox" class="selpositioninput" name="position_zu6ds" id="position_zu6ds_0" value="1"/>万位</label>
            <label for="position_zu6ds_1"><input type="checkbox" class="selpositioninput" name="position_zu6ds" id="position_zu6ds_1" value="2"/>千位</label>
            <label for="position_zu6ds_2"><input type="checkbox" class="selpositioninput" name="position_zu6ds" checked="checked" id="position_zu6ds_2" value="3"/>百位</label>
            <label for="position_zu6ds_3"><input type="checkbox" class="selpositioninput" name="position_zu6ds" checked="checked" id="position_zu6ds_3" value="4"/>十位</label>
            <label for="position_zu6ds_4"><input type="checkbox" class="selpositioninput" name="position_zu6ds" checked="checked" id="position_zu6ds_4" value="5"/>个位</label>
            <span class="rxdesc">
                    <b class="rx-b-ts">温馨提示：</b>
                    你选择了
                    <b class="rx-b-hao">
                       <var id="positioncount-zu6ds" class="rxcount">3</var>
                    </b>
                     个位置，系统自动根据位置组合成
                    <b class="rx-b-hao">
                       <var id="positioninfo-zu6ds" class="rxcount">1</var>
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

<script type="text/html" id="template_rx3hhzux">
    <div class="Pick cl-1003 recl-1009-hhzux">
        <p class="p1">
        <span class="fr fl cl-1001">
            从万位、千位、百位、十位、个位中至少选择三个位置,手动至少输入三个号码构成一注(不包含豹子号)。
            <a><img src="${resRoot}/themes/default/img/ico60.png" alt="">选号规则
                <var>投注方案：选择位置万、十、个位，输入号码001以及512 开奖号码：03410(指定位置号码顺序不限)即中任三组三；或者51812(指定位置号码顺序不限)即中任三组六。</var>
            </a>
            <a>
                <img src="${resRoot}/themes/default/img/ico61.png" alt="">中奖说明
                <var>从万、千、百、十、个位中至少选择三个位置,至少手动输入三个号码构成一注(不含豹子号)，开奖号码指定位置的号码为组三或组六形态，所选号码与开奖号码指定位置上的号码相同，且顺序不限，即为中奖。</var>
            </a>

        </span>
        </p>
        <div class="selposition re-select-hhzux" data-flag="wei-r3" data-name="hhzux">
            <label for="position_hhzux_0"><input type="checkbox" class="selpositioninput" name="position_hhzux" id="position_hhzux_0" value="1"/>万位</label>
            <label for="position_hhzux_1"><input type="checkbox" class="selpositioninput" name="position_hhzux" id="position_hhzux_1" value="2"/>千位</label>
            <label for="position_hhzux_2"><input type="checkbox" class="selpositioninput" name="position_hhzux" checked="checked" id="position_hhzux_2" value="3"/>百位</label>
            <label for="position_hhzux_3"><input type="checkbox" class="selpositioninput" name="position_hhzux" checked="checked" id="position_hhzux_3" value="4"/>十位</label>
            <label for="position_hhzux_4"><input type="checkbox" class="selpositioninput" name="position_hhzux" checked="checked" id="position_hhzux_4" value="5"/>个位</label>
            <span class="rxdesc">
                    <b class="rx-b-ts">温馨提示：</b>
                    你选择了
                    <b class="rx-b-hao">
                       <var id="positioncount-hhzux" class="rxcount">3</var>
                    </b>
                     个位置，系统自动根据位置组合成
                    <b class="rx-b-hao">
                       <var id="positioninfo-hhzux" class="rxcount">1</var>
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

<script type="text/html" id="template_rx3zuxhz">
    <div class="Pick cl-1002 recl-1010-zuxhz">
        <p class="p1">
        <span class="fr fl cl-1001">
            从万位、千位、百位、十位、个位中至少选择两个位置,至少选择一个和值号码构成一注。
            <a><img src="${resRoot}/themes/default/img/ico60.png" alt="">选号规则
                <var>投注方案：位置选择万、十、个位,选择和值号码8 开奖号码：51812，即中任三组选和值。</var>
            </a>
            <a>
                <img src="${resRoot}/themes/default/img/ico61.png" alt="">中奖说明
                <var>从万、千、百、十、个位中至少选择三个位置,至少选择一个和值号码构成一注，所选三个位置的开奖号码相加之和与所选和值一致(不包含豹子号)，即为中奖。</var>
            </a>
        </span>
        </p>
        <ul>
            <li class="re2-1004-li">
                <div class="selposition re-select-zuxhz" data-flag="wei-r3" data-name="zuxhz">
                    <label for="position_zuxhz0"><input type="checkbox" class="selpositioninput" name="position_zuxhz" id="position_zuxhz0" value="1"/>万位</label>
                    <label for="position_zuxhz1"><input type="checkbox" class="selpositioninput" name="position_zuxhz" id="position_zuxhz1" value="2"/>千位</label>
                    <label for="position_zuxhz2"><input type="checkbox" class="selpositioninput" name="position_zuxhz" checked="checked" id="position_zuxhz2" value="3"/>百位</label>
                    <label for="position_zuxhz3"><input type="checkbox" class="selpositioninput" name="position_zuxhz" checked="checked" id="position_zuxhz3" value="4"/>十位</label>
                    <label for="position_zuxhz4"><input type="checkbox" class="selpositioninput" name="position_zuxhz" checked="checked" id="position_zuxhz4" value="5"/>个位</label>
                    <span class="rxdesc">
                    <b class="rx-b-ts">温馨提示：</b>
                    你选择了
                    <b class="rx-b-hao">
                       <var id="positioncount-zuxhz" class="rxcount">3</var>
                    </b>
                     个位置，系统自动根据位置组合成
                    <b class="rx-b-hao">
                       <var id="positioninfo-zuxhz" class="rxcount">1</var>
                    </b>
                     个方案。
                </span>
                </div>
            </li>
            <li data-name="和值" class="hz-q2 re-zuxhz-rx3">
                <b class="hz-dir"><i>和值</i></b>
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
                </var>
                <var class="numLine renumHeigth">
                    <span><i>14</i></span>
                    <span><i>15</i></span>
                    <span><i>16</i></span>
                    <span><i>17</i></span>
                    <span><i>18</i></span>
                    <span><i>19</i></span>
                    <span><i>20</i></span>
                    <span><i>21</i></span>
                    <span><i>22</i></span>
                    <span><i>23</i></span>
                    <span><i>24</i></span>
                    <span><i>25</i></span>
                    <span><i>26</i></span>
                </var>
            </li>
        </ul>
    </div>
</script>
<script type="text/javascript">
    curl(['site/hall/ssc/OptionalThree'], function(PlayWay) {
        page.PlayWay = new PlayWay();
    });
</script>