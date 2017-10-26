<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<div class="group">
    <ul>
        <li>
            <b style="width: 83px">直选</b>
            <p class="btn_h3_zx">
                <span class="playPlIdBtn acti"  data-pljs=""  data-play_Code="pl3_sanxing_zhixuan" data-play_id="pl3_sanxing_zhixuan_fs" data-play_pl_id="复式" data-name="pl3zxfs" data-fun_zhushu="zhushu_pl3zxfs" data-fun_content="content_pl3zxfs" data-fun_suiji="suiji_pl3zxfs"><a href="javascript:void(0)">直选复式</a></span>
                <span class="playPlIdBtn " data-pljs="" data-play_Code="pl3_sanxing_zhixuan" data-play_id="pl3_sanxing_zhixuan_ds" data-play_pl_id="单式" data-name="pl3zxds" data-fun_zhushu="zhushu_pl3zxds" data-fun_content="content_pl3zxds" data-fun_suiji="suiji_pl3zxds"><a href="javascript:void(0)">直选单式</a></span>
                <span class="playPlIdBtn" data-pljs="" data-play_Code="pl3_sanxing_zhixuan" data-play_id="pl3_sanxing_zhixuan_hz" data-play_pl_id="和值"  data-name="pl3zxhz" data-fun_zhushu="zhushu_pl3zxhz" data-fun_content="content_pl3zxhz" data-fun_suiji="suiji_pl3zxhz"><a href="javascript:void(0)">直选和值</a></span>
            </p>
        </li>
        <li>
            <b style="width: 83px">组选</b>
            <p class="btn_h3_zux">
                <span class="playPlIdBtn" data-pljs="" data-play_Code="pl3_sanxing_zuxuan" data-play_id="pl3_sanxing_zuxuan_z3fs" data-play_pl_id="复式" data-name="pl3z3fs" data-fun_zhushu="zhushu_pl3z3fs" data-fun_content="content_pl3z3fs" data-fun_suiji="suiji_pl3z3fs"><a href="javascript:void(0)">组三复式</a></span>
                <span class="playPlIdBtn" data-pljs="" data-play_Code="pl3_sanxing_zuxuan" data-play_id="pl3_sanxing_zuxuan_z3ds" data-play_pl_id="单式" data-name="pl3z3ds" data-fun_zhushu="zhushu_pl3z3ds" data-fun_content="content_pl3z3ds" data-fun_suiji="suiji_pl3z3ds"><a href="javascript:void(0)">组三单式</a></span>
                <span class="playPlIdBtn" data-pljs="" data-play_Code="pl3_sanxing_zuxuan" data-play_id="pl3_sanxing_zuxuan_z6fs" data-play_pl_id="复式" data-name="pl3z6fs" data-fun_zhushu="zhushu_pl3z6fs" data-fun_content="content_pl3z6fs" data-fun_suiji="suiji_pl3z6fs"><a href="javascript:void(0)">组六复式</a></span>
                <span class="playPlIdBtn" data-pljs="" data-play_Code="pl3_sanxing_zuxuan" data-play_id="pl3_sanxing_zuxuan_z6ds" data-play_pl_id="单式" data-name="pl3z6ds" data-fun_zhushu="zhushu_pl3z6ds" data-fun_content="content_pl3z6ds" data-fun_suiji="suiji_pl3z6ds"><a href="javascript:void(0)">组六单式</a></span>
                <span class="playPlIdBtn" data-pljs="" data-play_Code="pl3_sanxing_zuxuan" data-play_id="pl3_sanxing_zuxuan_hhzx" data-play_pl_id="组三|组六" data-name="pl3hhzx" data-fun_zhushu="zhushu_pl3hhzx" data-fun_content="content_pl3hhzx" data-fun_suiji="suiji_pl3hhzx"><a href="javascript:void(0)">混合组选</a></span>
                <span class="playPlIdBtn"  data-pljs="" data-play_Code="pl3_sanxing_zuxuan" data-play_id="pl3_sanxing_zuxuan_zxhz" data-play_pl_id="组三|组六" data-name="pl3zuxhz" data-fun_zhushu="zhushu_pl3zuxhz" data-fun_content="content_pl3zuxhz" data-fun_suiji="suiji_pl3zuxhz"><a href="javascript:void(0)">组选和值</a></span>
            </p>
        </li>
    </ul>
</div>
<div id="subPage"></div>
<div id="subJRange"></div><script>
</script>
<script type="text/html" id="template_pl3zxfs">
    <div class="Pick cl-1002 recl-1002" data-flag="zxfs_zx">
        <p class="p1">
        <span class="fr fl cl-1001">
            从百位、十位、个位各选一个号码组成一注。
            <a><img src="${resRoot}/themes/default/img/ico60.png" alt="">选号规则
                <var>投注方案：从个、十、百位各选一个号码组成一注</var>
            </a>
            <a>
                <img src="${resRoot}/themes/default/img/ico61.png" alt="">中奖说明
                <var>从百位、十位、个位中选择一个3位数号码组成一注，所选号码与开奖号码3位相同，且顺序一致，即为中奖。</var>
            </a>
        </span>
        </p>
        <ul>
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

<script type="text/html" id="template_pl3zxds">
    <div class="Pick cl-1003 recl-1003">
        <p class="p1">
        <span class="fr fl cl-1001">
            手动输入号码，至少输入1个3位数号码组成一注。
            <a><img src="${resRoot}/themes/default/img/ico60.png" alt="">选号规则
                <var>投注方案：手动输入号码，至少输入1个三位数号码组成一注</var>
            </a>
            <a>
                <img src="${resRoot}/themes/default/img/ico61.png" alt="">中奖说明
                <var>手动输入一个3位数号码组成一注，所选号码的百位、十位、个位与开奖号码相同，且顺序一致，即为中奖。</var>
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

        <p class="rep1_zhushi">每一注号码之间请用一个 空格[ ]、逗号[,] 或者 分号[;] 隔开</p>
    </div>
</script>

<script type="text/html" id="template_pl3zh">
    <div class="Pick cl-1002 cl-1004-hszh">
        <p class="p1">
        <span class="fr fl cl-1001">
            从百位、十位、个位各选一个号码组成三注。
            <a><img src="${resRoot}/themes/default/img/ico60.png" alt="">选号规则
                <var>投注方案：购买：6+7+8，由以下三注：678(三星)、78(二星)、8(一星)构成 开奖号码：678，即可中奖 一星、二星、三星各一注。</var>
            </a>
            <a>
                <img src="${resRoot}/themes/default/img/ico61.png" alt="">中奖说明
                <var>从百、十、个位中至少各选择1个号码组成1-3星的组合共三注，当个位数与开奖号码相同，则中一个3等奖；如果个位和十位号码和开奖号码相同，则中一个3等奖以及一个2等奖，以次类推，最高可中3个奖。</var>
            </a>

        </span>
        </p>
        <ul>
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

<script type="text/html" id="template_pl3zxhz">
    <div class="Pick cl-1005-zxhz">
        <p class="p1">
        <span class="fr fl cl-1001">
            从0-27中任意选择1个或1个以上号码。
            <a><img src="${resRoot}/themes/default/img/ico60.png" alt="">选号规则
                <var>投注方案：从0-27中任意选择1个或1个以上号码</var>
            </a>
            <a>
                <img src="${resRoot}/themes/default/img/ico61.png" alt="">中奖说明
                <var>所选数值等于开奖号码的百位、十位、个位三个数字相加之和，即为中奖。</var>
            </a>
        </span>
        </p>
        <ul>
            <li class="li1005_hezhi" data-name="和值">
                <b><i>和值</i></b>
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

<script type="text/html" id="template_pl3zxkd">
    <div class="Pick cl-1002 cl-1006-zxkd">
        <p class="p1">
        <span class="fr fl cl-1001">
            从0-9中选择1个以上号码。
            <a><img src="${resRoot}/themes/default/img/ico60.png" alt="">选号规则
                <var>投注方案：跨度：8，开奖号码：**129，最大号码9与最小号码1相减值等于8，所选号与跨度号码相同即中奖。</var>
            </a>
            <a>
                <img src="${resRoot}/themes/default/img/ico61.png" alt="">中奖说明
                <var>所选数值与开奖号码后三位最大和最小数字相减之差，即为中奖。</var>
            </a>
        </span>
        </p>
        <ul>
            <li data-name="跨度">
                <b><i>跨度</i></b>
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

<script type="text/html" id="template_pl3z3fs">
    <div class="Pick cl-1002 cl-1007-zsfs">
        <p class="p1">
        <span class="fr fl cl-1001">
            从0-9中任意选择2个或2个以上号码。
            <a><img src="${resRoot}/themes/default/img/ico60.png" alt="">选号规则
                <var>投注方案：从0-9中任意选择2个或2个以上号码</var>
            </a>
            <a>
                <img src="${resRoot}/themes/default/img/ico61.png" alt="">中奖说明
                <var>从0-9中选择2个数字组成两注，所选号码与开奖号码的百位、十位、个位相同，且顺序不限，即为中奖。</var>
            </a>
        </span>
        </p>
        <ul>
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


<script type="text/html" id="template_pl3z3ds">
    <div class="Pick cl-1008-zsds">
        <p class="p1">
        <span class="fr fl cl-1001">
            手动输入号码，至少输入1个三位数号码（三个数字中必须有二个数字相同）。
            <a><img src="${resRoot}/themes/default/img/ico60.png" alt="">选号规则
                <var>投注方案：手动输入号码，至少输入 1 个三位数号码。(三个数字当中有二个数字相同)</var>
            </a>
            <a>
                <img src="${resRoot}/themes/default/img/ico61.png" alt="">中奖说明
                <var>手动输入组三号码，3个数字为一注，所选号码与开奖号码的百位、十位、个位相同，顺序不限，即为中奖</var>
            </a>

        </span>
        </p>
        <div class="content_jiang">
            <textarea class="content_tex" autofocus></textarea>
            <div class="right con_j_end">
                <ul>
                    <li onclick="page.PlayWay.daoRu()"><a href="javascript:void(0)">导入文件</a></li>
                    <li onclick="page.PlayWay.clearTextarea()"><a href="javascript:void(0)">清空</a></li>
                </ul>
            </div>
        </div>

        <p class="rep1_zhushi">每一注号码之间请用一个 空格[ ]、逗号[,] 或者 分号[;] 隔开</p>
    </div>
</script>

<script type="text/html" id="template_pl3z6fs">
    <div class="Pick cl-1002 cl-1009-zlfs">
        <p class="p1">
        <span class="fr fl cl-1001">
            从0-9中任意选择3个或3个以上号码。
            <a><img src="${resRoot}/themes/default/img/ico60.png" alt="">选号规则
                <var>投注方案：从0-9中任意选择3个或3个以上号码。</var>
            </a>
            <a>
                <img src="${resRoot}/themes/default/img/ico61.png" alt="">中奖说明
                <var>从0-9中任意选择3个号码组成一注，所选号码与开奖号码的百位、十位、个位相同，顺序不限，即为中奖。</var>
            </a>
        </span>
        </p>
        <ul>
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

<script type="text/html" id="template_pl3z6ds">
    <div class="Pick cl-1010-zlds">
        <p class="p1">
        <span class="fr fl cl-1001">
            手动输入号码，至少输入1个三位数号码（三个数字完全不相同）。
            <a><img src="${resRoot}/themes/default/img/ico60.png" alt="">选号规则
                <var>投注方案：手动输入号码，至少输入 1 个三位数号码。(三个数字全不相同)</var>
            </a>
            <a>
                <img src="${resRoot}/themes/default/img/ico61.png" alt="">中奖说明
                <var>手动输入组六号码，3个数字为一注，所选号码与开奖号码的百位、十位、个位相同，顺序不限，即为中奖</var>
            </a>

        </span>
        </p>
        <div class="content_jiang">
            <textarea class="content_tex" autofocus></textarea>
            <div class="right con_j_end">
                <ul>
                    <li onclick="page.PlayWay.daoRu()"><a href="javascript:void(0)">导入文件</a></li>
                    <li onclick="page.PlayWay.clearTextarea()"><a href="javascript:void(0)">清空</a></li>
                </ul>
            </div>
        </div>

        <p class="rep1_zhushi">每一注号码之间请用一个 空格[ ]、逗号[,] 或者 分号[;] 隔开</p>
    </div>
</script>

<script type="text/html" id="template_pl3hhzx">
    <div class="Pick cl-1011-hhzx">
        <p class="p1">
        <span class="fr fl cl-1001">
            手动输入号码，至少输入1个三位数号码(不包含豹子号)。
            <a><img src="${resRoot}/themes/default/img/ico60.png" alt="">选号规则
                <var>投注方案：手动输入号码，至少输入1个三位数号码。</var>
            </a>
            <a>
                <img src="${resRoot}/themes/default/img/ico61.png" alt="">中奖说明
                <var>手动输入组三或组六号码，3个数字为一注，所选号码与开奖号码的百位、十位、个位相同，顺序不限，即为中奖。</var>
            </a>

        </span>
        </p>
        <div class="content_jiang">
            <textarea class="content_tex" autofocus></textarea>
            <div class="right con_j_end">
                <ul>
                    <li onclick="page.PlayWay.daoRu()"><a href="javascript:void(0)">导入文件</a></li>
                    <li onclick="page.PlayWay.clearTextarea()"><a href="javascript:void(0)">清空</a></li>
                </ul>
            </div>
        </div>

        <p class="rep1_zhushi">每一注号码之间请用一个 空格[ ]、逗号[,] 或者 分号[;] 隔开</p>
    </div>
</script>

<script type="text/html" id="template_pl3zuxhz">
    <div class="Pick cl-1012-zxhz">
        <p class="p1">
        <span class="fr fl cl-1001">
            从1-26中选择1个号码。
            <a><img src="${resRoot}/themes/default/img/ico60.png" alt="">选号规则
                <var>投注方案：从1-26中选择1个号码</var>
            </a>
            <a>
                <img src="${resRoot}/themes/default/img/ico61.png" alt="">中奖说明
                <var>所选数值等于开奖号码百位、十位、个位三个数字相加之和(不含豹子号)，即为中奖。</var>
            </a>
        </span>
        </p>
        <ul>
            <li class="li1012_hezhi" data-name="和值">
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

<script type="text/html" id="template_pl3zxbd">
    <div class="Pick cl-1002 cl-1013-zxbd">
        <p class="p1">
        <span class="fr fl cl-1001">
            从0-9中选择1个号码。
            <a><img src="${resRoot}/themes/default/img/ico60.png" alt="">选号规则
                <var>投注方案：包胆3：开奖号码：后三位3XX或者33X，即中后三组选三，后三位3XY，即中后三组选六</var>
            </a>
            <a>
                <img src="${resRoot}/themes/default/img/ico61.png" alt="">中奖说明
                <var>从0-9号码中任意选择一个胆码，开奖号码后三位为组选三或组选六形态(不含豹子号，投注号码与开奖后三位中任意一位相同，即为中奖。</var>
            </a>
        </span>
        </p>
        <ul>
            <li data-name="包胆">
                <b><i>包胆</i></b>
                <var class="numLine" data-flag="bdDanXuan">
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
            </li>
        </ul>
    </div>
</script>

<script type="text/html" id="template_pl3hzws">
    <div class="Pick cl-1002 cl-1014-hzws">
        <p class="p1">
        <span class="fr fl cl-1001">
            从0-9中选择1个号码。
            <a><img src="${resRoot}/themes/default/img/ico60.png" alt="">选号规则
                <var>投注方案：和值尾数8 开奖号码：后三位936，和值尾数为8，即中和值尾数。</var>
            </a>
            <a>
                <img src="${resRoot}/themes/default/img/ico61.png" alt="">中奖说明
                <var>所选号码等于开奖号码的百、十、个位数字相加之和的尾数，即为中奖。</var>
            </a>
        </span>
        </p>
        <ul>
            <li class="hzws_li" data-name="和值尾数">
                <b><i>和值尾数</i></b>
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
            </li>
        </ul>
    </div>
</script>

<script type="text/html" id="template_pl3tsh">
    <div class="Pick cl-1002 cl-1015-tsh">
        <p class="p1">
        <span class="fr fl cl-1001">
            选择1个或一个以上特殊号码。
            <a><img src="${resRoot}/themes/default/img/ico60.png" alt="">选号规则
                <var>投注方案：豹子顺子对子 开奖号码：后三位888，即中豹子；后三位678，即中顺子；后三位558，即中对子。</var>
            </a>
            <a>
                <img src="${resRoot}/themes/default/img/ico61.png" alt="">中奖说明
                <var>所选号码特殊属性与开奖号码后三位号码属性一致，即为中奖。其中：1.顺子号的百、十、个位不分顺序(特别号码：019、089也是顺子号)；2.对子号指的是开奖号码的后三位当中，任意两位数字相同的三位数号码</var>
            </a>
        </span>
        </p>
        <ul>
            <li class="hzws_li tsh_li" data-name="特殊号">
                <b class="tsh-b"><i>特殊号</i></b>
                <span>豹子</span>
                <span>顺子</span>
                <span>对子</span>
            </li>
        </ul>
    </div>
</script>

<script type="text/javascript">
    curl(['site/hall/pl3/3star'], function(PlayWay) {
        page.PlayWay = new PlayWay();
    });
</script>