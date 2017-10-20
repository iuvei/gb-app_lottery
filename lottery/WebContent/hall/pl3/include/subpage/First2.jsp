<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<div class="group">
    <ul>
        <li>
            <b style="width: 83px">前二直选</b>
            <p class="btn_fu_zhi">
                <span class="playPlIdBtn acti" data-pljs=""  data-play_Code="pl3_erxing_zhixuan" data-play_id="pl3_erxing_zhixuan_qefs" data-play_pl_id="复式" data-name="q2zxfs" data-fun_zhushu="zhushu_q2zxfs" data-fun_content="content_q2zxfs" data-fun_suiji="suiji_q2zxfs"><a href="javascript:void(0)">直选复式</a></span>
                <span class="playPlIdBtn" data-pljs=""  data-play_Code="pl3_erxing_zhixuan" data-play_id="pl3_erxing_zhixuan_qeds" data-play_pl_id="单式" data-name="q2zxds" data-fun_zhushu="zhushu_q2zxds" data-fun_content="content_q2zxds" data-fun_suiji="suiji_q2zxds"><a href="javascript:void(0)">直选单式</a></span>
            </p>
        </li>
        <li>
            <b style="width: 83px">前二组选</b>
            <p class="btn_fu_zhi">
                <span class="playPlIdBtn" data-pljs=""  data-play_Code="pl3_erxing_zuxuan"data-play_id="pl3_erxing_zuxuan_qefs" data-play_pl_id="复式" data-name="q2zuxfs" data-fun_suiji="suiji_q2zuxfs" data-fun_zhushu="zhushu_q2zuxfs" data-fun_content="content_q2zuxfs"><a href="javascript:void(0)">组选复式</a></span>
                <span class="playPlIdBtn" data-pljs=""  data-play_Code="pl3_erxing_zuxuan" data-play_id="pl3_erxing_zuxuan_qeds" data-play_pl_id="单式" data-name="q2zuxds" data-fun_suiji="suiji_q2zuxds" data-fun_zhushu="zhushu_q2zuxds" data-fun_content="content_q2zuxds"><a href="javascript:void(0)">组选单式</a></span>
            </p>
        </li>
    </ul>
</div>

<div id="subPage"></div>
<div id="subJRange"></div>
<script type="text/html" id="template_q2zxfs">
    <div class="Pick cl-1002 recl-1002" data-name="zxfs" data-flag="zxfs-q2">
        <p class="p1">
        <span class="fr fl cl-1001">
            从万位、千位中至少各选1个号码组成一注。
            <a><img src="${resRoot}/themes/default/img/ico60.png" alt="">选号规则
                <var>投注方案：58 开奖号码前两位：58，即中前二直选。</var>
            </a>
            <a>
                <img src="${resRoot}/themes/default/img/ico61.png" alt="">中奖说明
                <var>从万、千位中至少各选择1个号码组成一注，所选号码与开奖号码的前2位相同，且顺序一致，即为中奖。</var>
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
        </ul>
    </div>
</script>


<script type="text/html" id="template_q2zxds">
    <div class="Pick cl-1003 recl-1003" data-name="zxds">
        <p class="p1">
        <span class="fr fl cl-1001">
            手动输入号码，至少输入1个二位数号码组成一注。
            <a><img src="${resRoot}/themes/default/img/ico60.png" alt="">选号规则
                <var>投注方案：58 开奖号码前两位：58，即中前二直选。</var>
            </a>
            <a>
                <img src="${resRoot}/themes/default/img/ico61.png" alt="">中奖说明
                <var>手动输入2个号码组成一注，输入号码的万、千位与开奖号码相同，且顺序一致，即为中奖。</var>
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

<script type="text/html" id="template_q2zxhz">
    <div class="Pick cl-1002 recl-1004-zxhz" data-name="zxhz">
        <p class="p1">
        <span class="fr fl cl-1001">
            从0-18中任意选择1个或1个以上的和值号码。
            <a><img src="${resRoot}/themes/default/img/ico60.png" alt="">选号规则
                <var>投注方案：和值1 开奖号码前两位：01或10，即中前二和值。</var>
            </a>
            <a>
                <img src="${resRoot}/themes/default/img/ico61.png" alt="">中奖说明
                <var>开奖号码的万、千位中两个数字相加之和等于所选和值，即为中奖。</var>
            </a>
        </span>
        </p>
        <ul>
            <li data-name="和值" class="hz-q2 rehz-q2">
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

<script type="text/html" id="template_q2zxkd">
    <div class="Pick cl-1002 recl-1005-zxkd" data-name="zxkd">
        <p class="p1">
        <span class="fr fl cl-1001">
            从0-9中任意选择1个号码组成一注。
            <a><img src="${resRoot}/themes/default/img/ico60.png" alt="">选号规则
                <var>投注方案：跨度9 开奖号码：90***，最大值9与最小值0相减之差即为跨度值，当所选号与跨度号码相同，即为中奖。</var>
            </a>
            <a>
                <img src="${resRoot}/themes/default/img/ico61.png" alt="">中奖说明
                <var>所选数值等于前二位最大数与最小数相减之差，即为中奖。</var>
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

<script type="text/html" id="template_q2zuxfs">
    <div class="Pick cl-1002 recl-1006-zuxfs" data-name="zuxfs">
        <p class="p1">
        <span class="fr fl cl-1001">
           从0-9中任意选择2个或2个以上号码。
            <a><img src="${resRoot}/themes/default/img/ico60.png" alt="">选号规则
                <var>投注方案：58 开奖号码：前两位 58 或 85(顺序不限，不含对子号)，即为中奖。</var>
            </a>
            <a>
                <img src="${resRoot}/themes/default/img/ico61.png" alt="">中奖说明
                <var>从0-9号码中选取两个号码组成一注，所选号码与开奖号码的万、千位相同，顺序不限，即为中奖。</var>
            </a>
        </span>
        </p>
        <ul>
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

<script type="text/html" id="template_q2zuxds">
    <div class="Pick cl-1003 recl-1007-zuxds" data-name="zuxds">
        <p class="p1">
        <span class="fr fl cl-1001">
            手动输入号码，至少输入1个二位数号码组成一注。
            <a><img src="${resRoot}/themes/default/img/ico60.png" alt="">选号规则
                <var>投注方案：58 开奖号码：前二位 58 或者 85(顺序不限，不含对子号)，即中前二组选。</var>
            </a>
            <a>
                <img src="${resRoot}/themes/default/img/ico61.png" alt="">中奖说明
                <var>手动输入2个号码组成一注，输入号码的万、千位与开奖号码相同，且顺序不限，即为中奖。</var>
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

<script type="text/html" id="template_q2zuxhz">
    <div class="Pick cl-1002 recl-1008-zuxhz" data-name="zuxhz">
        <p class="p1">
        <span class="fr fl cl-1001">
            从1-17中任意选择1个或者1个以上号码。
            <a><img src="${resRoot}/themes/default/img/ico60.png" alt="">选号规则
                <var>投注方案：和值1 开奖号码前两位：01或10(顺序不限，不含对子号)，即中前二组选。</var>
            </a>
            <a>
                <img src="${resRoot}/themes/default/img/ico61.png" alt="">中奖说明
                <var>开奖号码的万、千位中两个数字相加之和等于所选号(不含对子号)，即为中奖。</var>
            </a>
        </span>
        </p>
        <ul>
            <li data-name="和值" class="hz-q2 rehz-q2">
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
                </var>
                <var class="numLine renumHeigth">
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

<script type="text/html" id="template_q2zuxbd">
    <div class="Pick cl-1002 recl-1009-zuxbd" data-name="zuxbd">
        <p class="p1">
        <span class="fr fl cl-1001">
           从0-9中任意选择1个包胆号码。
            <a><img src="${resRoot}/themes/default/img/ico60.png" alt="">选号规则
                <var>投注方案：包胆8 开奖号码：前二位 8×，且×不等于8，即中前二组选。</var>
            </a>
            <a>
                <img src="${resRoot}/themes/default/img/ico61.png" alt="">中奖说明
                <var>从0-9号码中任意选取一个胆码，开奖号码前二位各不相同(不含对子号)，投注号码与开奖号码前二位中任意一位相同，即为中奖。</var>
            </a>
        </span>
        </p>
        <ul>
            <li data-name="胆码">
                <b><i>胆码</i></b>
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
<script type="text/javascript">
    curl(['site/hall/pl3/First2'], function(PlayWay) {
        page.PlayWay = new PlayWay();
    });
</script>