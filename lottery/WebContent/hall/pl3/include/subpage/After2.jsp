<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<div class="group">
    <ul>
        <li>
            <b style="width: 83px">后二直选</b>
            <p class="btn_fu_zhi">
                <span class="playPlIdBtn acti" data-pljs=""  data-play_Code="pl3_erxing_zhixuan" data-play_id="pl3_erxing_zhixuan_hefs" data-play_pl_id="复式" data-name="h2zxfs" data-fun_zhushu="zhushu_pl3_erxing_zhixuan_hefs" data-fun_content="content_pl3_erxing_zhixuan_hefs" data-fun_suiji="suiji_pl3_erxing_zhixuan_hefs"><a href="javascript:void(0)">直选复式</a></span>
                <span class="playPlIdBtn" data-pljs=""  data-play_Code="pl3_erxing_zhixuan" data-play_id="pl3_erxing_zhixuan_heds" data-play_pl_id="单式" data-name="h2zxds" data-fun_zhushu="zhushu_pl3_erxing_zhixuan_heds" data-fun_content="content_pl3_erxing_zhixuan_heds" data-fun_suiji="suiji_pl3_erxing_zhixuan_heds"><a href="javascript:void(0)">直选单式</a></span>
            </p>
        </li>
        <li>
            <b style="width: 83px">后二组选</b>
            <p class="btn_fu_zhi">
                <span class="playPlIdBtn" data-pljs=""  data-play_Code="pl3_erxing_zuxuan"data-play_id="pl3_erxing_zuxuan_hefs" data-play_pl_id="复式" data-name="h2zuxfs" data-fun_suiji="suiji_pl3_erxing_zuxuan_hefs" data-fun_zhushu="zhushu_pl3_erxing_zuxuan_hefs" data-fun_content="content_pl3_erxing_zuxuan_hefs"><a href="javascript:void(0)">组选复式</a></span>
                <span class="playPlIdBtn" data-pljs=""  data-play_Code="pl3_erxing_zuxuan" data-play_id="pl3_erxing_zuxuan_heds" data-play_pl_id="单式" data-name="h2zuxds" data-fun_suiji="suiji_pl3_erxing_zuxuan_heds" data-fun_zhushu="zhushu_pl3_erxing_zuxuan_heds" data-fun_content="content_pl3_erxing_zuxuan_heds"><a href="javascript:void(0)">组选单式</a></span>
            </p>
        </li>
    </ul>
</div>

<div id="subPage"></div>
<div id="subJRange"></div>
<script type="text/html" id="template_h2zxfs">
    <div class="Pick cl-1002 recl-1002" data-name="zxfs" data-flag="zxfs-q2">
        <p class="p1">
        <span class="fr fl cl-1001">
            从十、个位各选一个号码组成一注
            <a><img src="${resRoot}/themes/default/img/ico60.png" alt="">选号规则
                <var>投注方案：从十、个位各选一个号码组成一注</var>
            </a>
            <a>
                <img src="${resRoot}/themes/default/img/ico61.png" alt="">中奖说明
                <var>从十位、个位中选择一个2位数号码组成一注，所选号码与开奖号码的十位、个位相同，且顺序一致，即为中奖。</var>
            </a>
        </span>
        </p>
        <ul>
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


<script type="text/html" id="template_h2zxds">
    <div class="Pick cl-1003 recl-1003" data-name="zxds">
        <p class="p1">
        <span class="fr fl cl-1001">
            手动输入号码，至少输入1个二位数号码组成一注。
            <a><img src="${resRoot}/themes/default/img/ico60.png" alt="">选号规则
                <var>投注方案：手动输入号码，至少输入1个两位数号码</var>
            </a>
            <a>
                <img src="${resRoot}/themes/default/img/ico61.png" alt="">中奖说明
                <var>手动输入一个2位数号码组成一注，所选号码的十位、个位与开奖号码相同，且顺序一致，即为中奖。</var>
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


<script type="text/html" id="template_h2zuxfs">
    <div class="Pick cl-1002 recl-1006-zuxfs" data-name="zuxfs">
        <p class="p1">
        <span class="fr fl cl-1001">
           从0-9中任意选择2个或2个以上号码。
            <a><img src="${resRoot}/themes/default/img/ico60.png" alt="">选号规则
                <var>投注方案：从0-9中任意选择2个或2个以上号码。</var>
            </a>
            <a>
                <img src="${resRoot}/themes/default/img/ico61.png" alt="">中奖说明
                <var>从0-9中选2个号码组成一注，所选号码与开奖号码的十位、个位相同，顺序不限（不含对子号），即为中奖。</var>
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

<script type="text/html" id="template_h2zuxds">
    <div class="Pick cl-1003 recl-1007-zuxds" data-name="zuxds">
        <p class="p1">
        <span class="fr fl cl-1001">
            手动输入号码，至少输入1个两位数号码。十位与个位的数字应不同。
            <a><img src="${resRoot}/themes/default/img/ico60.png" alt="">选号规则
                <var>投注方案：手动输入号码，至少输入1个两位数号码。十位与个位的数字应不同。</var>
            </a>
            <a>
                <img src="${resRoot}/themes/default/img/ico61.png" alt="">中奖说明
                <var>手动输入一个2位数号码组成一注，所选号码的十位、个位与开奖号码的前两位相同，且数字不同，顺序不限，即为中奖。</var>
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

<script type="text/javascript">
    curl(['site/hall/pl3/After2'], function(PlayWay) {
        page.PlayWay = new PlayWay();
    });
</script>