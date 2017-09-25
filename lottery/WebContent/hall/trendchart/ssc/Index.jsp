<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>购彩大厅 | 所有彩票</title>
    <%@ include file="/hall/trendchart/zstinclude.head.jsp" %>
    <script src="${root}/message_<%=SessionManagerCommon.getLocale().toString()%>.js?v=${rcVersion}"></script>
</head>
<body marginwidth="0" marginheight="0">
<div id="box" class="qc">
    <div class="qc" id="Right">
        <div class="main">
            <div class="main-box remain-box">
                <div class="main-nav">
                    <div class="cplogo" id="lotteryCode" data-code="${code}"  data-type="${lotterytype}" data-id="${dataId}"><img src="${resRoot}/themes/default/img/${code}.png" alt="${dicts.lottery.lottery[code]}" /><span>${dicts.lottery.lottery[code]}</span></div>
                    <div class="czqh">
                        <span class="curretSsc">切换彩种</span><span class="xiajian"></span>
                        <div class="min">
                            <dl>
                                <dt>
                                    <span class="iconOne"></span>
                                    高频：
                                </dt>
                                <dd>
                                    <ul>
                                        <c:forEach items="${high}" var="h" varStatus="status">
                                        <c:if test="${status.index %2 !=1}"><li></c:if>
                                        <a href="javascript:void(0)" onclick="page.goZst('${h.code}.html?type=basetrend')">${dicts.lottery.lottery[h.code]}</a>
                                        <c:if test="${status.index %2 ==1 || status.last}"><li></c:if>
                                        </c:forEach>
                                    </ul>
                                </dd>
                            </dl>
                            <dl>
                                <dt>
                                    <span class="iconTwo"></span>
                                    低频：
                                </dt>
                                <dd>
                                    <ul>
                                        <c:forEach items="${low}" var="l" varStatus="status">
                                        <c:if test="${status.index %2 !=1}"><li></c:if>
                                        <a href="javascript:void(0)" onclick="page.goZst('${l.code}.html?type=basetrend')">${dicts.lottery.lottery[l.code]}</a>
                                        <c:if test="${status.index %2 ==1 || status.last}"><li></c:if>
                                        </c:forEach>
                                    </ul>
                                </dd>
                            </dl>
                        </div>
                    </div>
                    <ul class="btn-navs">
                        <li class="fff" data-contentid="zhexianData" data-id="shuju1">基本走势</li>
                        <li data-contentid="shuju2" data-id="shuju2">K线图</li>
                        <li data-contentid="shuju3" data-id="shuju3">直方图</li>
                        <li data-id="shuju5">历史开奖数据</li>
                        <li id="getljtzpage">
                            <a href="javascript:void(0)">立即投注</a>
                        </li>
                    </ul>
                </div>
                <div class="qhbox">
                    <div class="qhbox_title"></div>
                    <div class="qhbox_title2"></div>
                    <div class="main-li main-li-cq">
                        <div class="main-ul-box1" id="zssearchDiv">
                            <ul class="main-ul-box">
                                <li>
                                    <ul class="main-ul-1">
                                        <li>
                                            <a class="active" href="javascript:void(0)" data-contentid="zhexianData" data-id="hmzs">号码走势</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)" data-contentid="dxdshezhi" data-id="smzs">双面走势</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)" data-contentid="clzoushi" data-id="clzs">长龙走势</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="main-li-right" style="visibility: hidden;">
                            <div>
                                <a href="javascript:void(0)" onclick="parent.getSscPage('gcdt/xjssc')">立即投注</a>
                            </div>
                        </div>
                    </div>
                    <div class="search">
                        <ul class="search-left">
                            <li><label>遗漏数据<input type="checkbox" id="checkboxYlsj" checked="checked"></label></li>
                            <li><label>遗漏分层<input type="checkbox"  id="checkboxYlfc"></label></li>
                            <li class="zhe"><label>折线<input type="checkbox" id="checkboxZhexian" checked="checked"></label></li>
                        </ul>
                        <ul class="search-right">
                            <li>
                                <div><b>查询：</b></div>
                            </li>
                            <li>
                                <div class="qi xuan">
                                    <a href="javascript:void(0)" class="on30qi" data-num="30">近30期</a>
                                </div>
                            </li>
                            <li>
                                <div class="qi">
                                    <a href="javascript:void(0)" class="on50qi" data-num="50">近50期</a>
                                </div>
                            </li>
                            <li>
                                <div class="qi">
                                    <a href="javascript:void(0)" class="on100qi" data-num="100">近100期</a>
                                </div>
                            </li>
                            <li>
                                <div class="qi">
                                    <a href="javascript:void(0)" class="oncurrentqi" data-num="150">近150期</a>
                                </div>
                            </li>
                            <li>
                                <div class="qi">
                                    <a href="javascript:void(0)" class="onlatelyqi" data-num="200">近200期</a>
                                </div>
                            </li>
                            <li class="kuang1">
                                <div class="div">
                                    <a href="javascript:void(0)">绘图工具</a>
                                </div>
                                <div class="btn-box">
                                    <span class="btn btn-hua" onClick="change_attr(0,-1,-1)" style="background-image: url(${resRoot}/themes/default/zst/img/zhubg.png);background-position: -102px -346px;"></span>
                                    <span class="btn btn-hua" onClick="change_attr(1,-1,-1)" style="background-image: url(${resRoot}/themes/default/zst/img/zhubg.png); background-position: -68px -346px;"></span>
                                    <span class="btn btn-hua" onClick="change_attr(3,-1,-1)" style="background-image: url(${resRoot}/themes/default/zst/img/zhubg.png); background-position: -34px -346px;;"></span>
                                    <span class="btn btn-hua" onClick="change_attr(4,-1,-1)" style="background-image: url(${resRoot}/themes/default/zst/img/zhubg.png); background-position: 0 -346px"></span>
                                    <span class="btn" onClick="change_attr(5,-1,-1)" style="background-image: url(${resRoot}/themes/default/zst/img/zhubg.png);background-position: -34px -374px;"></span>
                                    <span class="btn btn-hua" onClick="fill_canvas('rgba(0, 0, 0,1)',0,0,canvas_size.x,canvas_size.y)" style="background-image: url(${resRoot}/themes/default/zst/img/zhubg.png);background-position: 0 -374px;"></span>
                                    <span class="btn btn-cos" style="background-image: url(${resRoot}/themes/default/zst/img/zhubg.png);background-position: -71px -284px"></span>
                                </div>
                            </li>
                        </ul>
                    </div>

                    <div id="shuju1" class="shuju hide">
                        <div class="chu-box">
                            <div class="chu">
                                <div class="cl-40">
                                    <div class="cl-30">
                                        <div class="left cl-31">期号</div>
                                        <div class="left cl-32">奖号</div>
                                        <div class="left cl-33">
                                            <div class="cl-35">
                                                <div class="left cl-34">万位</div>
                                                <div class="left cl-34">千位</div>
                                                <div class="left cl-34">百位</div>
                                                <div class="left cl-34">十位</div>
                                                <div class="left cl-34">个位</div>
                                            </div>
                                            <div class="cl-35 cl-36 clean">
                                                <script>
                                                    for(var i = 0; i < 5; ++i) {
                                                        for(var j = 0; j < 10; ++j) {
                                                            var s = '';
                                                            if(i % 2 == 0) {
                                                                s = 'bg-1';
                                                            } else {
                                                                s = 'bg-2'
                                                            }
                                                            document.write('<var class="' + s + '"><i>' + j + '</i></var>');
                                                        }
                                                    }
                                                </script>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="zhexianData"></div>
                                </div>
                            </div>

                            <div class="cl-40 clean cl-41">
                                <p>遗漏统计</p>
                            </div>
                            <div class="cl-40 clean">
                                <div class="cl-30">
                                    <div class="left cl-31">期号</div>
                                    <div class="left cl-32">奖号</div>
                                    <div class="left cl-33">
                                        <div class="cl-35">
                                            <div class="left cl-34">万位</div>
                                            <div class="left cl-34">千位</div>
                                            <div class="left cl-34">百位</div>
                                            <div class="left cl-34">十位</div>
                                            <div class="left cl-34">个位</div>
                                        </div>
                                        <div class="cl-35 cl-36 clean">
                                            <script>
                                                for(var i = 0; i < 5; ++i) {
                                                    for(var j = 0; j < 10; ++j) {
                                                        document.write('<var class=""><i>' + j + '</i></var>');
                                                    }
                                                }
                                            </script>
                                        </div>
                                    </div>
                                </div>
                                <div id="yiLouData">
                                    <div class="clean bg-gray">
                                        <div class="left cl-31 cl-51">出现总次数</div>
                                        <div id="cxzcs"></div>
                                    </div>
                                    <div class="clean bg-white">
                                        <div class="left cl-31 cl-51">平均遗漏值</div>
                                        <div id="pjylz"> </div>
                                    </div>
                                    <div class="clean bg-gray">
                                        <div class="left cl-31 cl-51">最大遗漏值</div>
                                        <div id="zdylz"></div>
                                    </div>
                                    <div class="clean bg-white">
                                        <div class="left cl-31 cl-51">最大连出值</div>
                                        <div id="zdlcz"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="shuju2" class="shuju hide">
                        <div class="biao">
                            <div id="main1" style="width: 1250px;height:600px;background: #fff"></div>
                        </div>
                    </div>
                    <div id="shuju3" class="shuju hide">
                        <div id="main2" style="width: 1162px;height:500px;"></div>
                    </div>
                    <div id="shuju6" class="shuju hide">
                        <div class="chu-box">
                            <div class="chu" id="canvasHeiht">
                                <div class="cl-40">
                                    <div class="cl-30">
                                        <div class="left cl-31 sm-qh">期号</div>
                                        <div class="left cl-32 sm-jh">奖号</div>
                                        <div class="left cl-33">
                                            <div class="cl-35">
                                                <div class="left cl-jb cl-28 ">万位</div>
                                                <div class="left cl-jb cl-28 ">千位</div>
                                                <div class="left cl-jb cl-28 ">百位</div>
                                                <div class="left cl-jb cl-28 ">十位</div>
                                                <div class="left cl-jb cl-28 ">个位</div>
                                                <div class="left cl-jb cl-29">总和、龙虎和</div>
                                            </div>
                                            <div class="cl-35 cl-36 clean sm-w">
                                                <script>
                                                    for (var i = 0; i < 5; ++i) {
                                                        for (var j = 0; j < 6; ++j) {
                                                            document.write('<var class="sm-head"><i>' + (j == 0 ? '大' : (j == 2 ? '单' : (j == 3 ? '双' : (j == 4 ? '质' : (j == 5 ? '合' : '小'))))) + '</i></var>');
                                                        }
                                                    }

                                                    for (var j = 0; j < 7; ++j) {
                                                        document.write('<var class="zh"><i>' + (j == 0 ? '龙' : (j == 2 ? '总大' : (j == 3 ? '总小' : (j == 4 ? '总单' : (j == 5 ? '总双' : (j == 6 ? '和' : '虎')))))) + '</i></var>');
                                                    }
                                                </script>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="dxdshezhi"></div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div id="shuju7" class="shuju hide">
                        <div class="chu-box rechu-box">
                            <div class="chu">
                                <div class="sm_clong">
                                    <div class="game_tables regame_tables">
                                        <table hidden="hidden" width="100%" class="game_tab" id="bottom_zs_table_head"
                                               style="border-bottom: 1px solid #A69B91;">
                                            <tbody>
                                            <tr>
                                                <th class="game_result" data-position="0">第一球</th>
                                                <th class="game_result" data-position="1">第二球</th>
                                                <th class="game_result" data-position="2">第三球</th>
                                                <th class="game_result" data-position="3">第四球</th>
                                                <th class="game_result" data-position="4">第五球</th>
                                                <th class="game_result" data-position="zh">总和</th>
                                            </tr>
                                            </tbody>
                                        </table>
                                        <table width="100%" border="0">
                                            <tbody>
                                            <tr>
                                                <th class="game_result" data-type="dx"
                                                    style="text-align: left; padding-left: 10px; color: gray;font-size: 14px;">近80期长龙走势
                                                </th>
                                            </tr>
                                            </tbody>
                                        </table>
                                        <div id="bottom_zs_table_content">
                                        </div>

                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>


                    <div id="shuju4" class="shuju hide">
                        <table class="tongji">
                            <thead>
                            <tr>
                                <th colspan="2">号码</th>
                                <th>出现总次数</th>
                                <th>平均遗漏值</th>
                                <th>最大遗漏值</th>
                                <th>最大连出值</th>
                            </tr>
                            </thead>
                            <tbody>
                            </tbody>
                        </table>
                    </div>
                    <div id="shuju5" class="shuju">
                        <table>
                            <thead>
                            <tr class="bghui">
                                <th>期号</th>
                                <th>开奖日期</th>
                                <th>开奖号码</th>
                            </tr>
                            </thead>
                            <tbody>
                            </tbody>
                        </table>
                    </div>
                    <div class="shuoming qc">
                        <div class="shuomingleft" style="width: 58%">
                            <div class="tou">
                                <h3>参数说明</h3>
                            </div>
                            <div class="jieshi">

                                <p><b>遗漏数据：</b> 自上期开出到本期间隔的期数。</p>

                                <p><b>遗漏分层：</b> 将当前遗漏用浅蓝色柱状阴影标注。</p>

                                <p><b>出现总次数：</b> 统计期数内实际出现的次数。</p>

                                <p><b>平均遗漏值：</b> 统计期数内遗漏的平均值。计算公式：平均遗漏=每次遗漏期数之和/出现次数。</p>

                                <p><b>最大遗漏值：</b> 统计期数内遗漏的最大值。</p>

                                <p><b>最大连出值：</b> 统计期数内连续开出的最大值。</p>
                            </div>
                        </div>
                        <div class="shuomingright" style="width:500px;">
                            <div class="tou">
                                <h4>第 <span id="number"></span> 期 &nbsp <font id="openDate"></font>开奖</h4>
                            </div>
                            <a href="javascript:void(0)" class="ljtzpage"><img class="btnjiang" src="${resRoot}/themes/default/zst/img/jiang.png" alt=""></a>
                            <div class="jiezhi">
                                <h3>
                                    <p><font id="tip"></font>
                                        <span id="leftTime"></span></p>
                                </h3>
                            </div>
                            <c:choose>
                                <c:when test="${code eq 'cqssc'}">
                                    <div class="zhushi">每天销售120期&nbsp&nbsp每5分钟-10分钟一期</div>
                                </c:when>
                                <c:when test="${code eq 'xjssc'}">
                                    <div class="zhushi">每天销售96期&nbsp&nbsp每10分钟一期</div>
                                </c:when>
                                <c:when test="${code eq 'tjssc'}">
                                    <div class="zhushi">每天销售84期&nbsp&nbsp每10分钟一期</div>
                                </c:when>
                                <c:when test="${code eq 'ffssc'}">
                                    <div class="zhushi">每天销售1440期&nbsp&nbsp每1分钟一期</div>
                                </c:when>
                                <c:when test="${code eq 'efssc'}">
                                    <div class="zhushi">每天销售720期&nbsp&nbsp每2分钟一期</div>
                                </c:when>
                                <c:when test="${code eq 'sfssc'}">
                                    <div class="zhushi">每天销售480期&nbsp&nbsp每3分钟一期</div>
                                </c:when>
                                <c:when test="${code eq 'wfssc'}">
                                    <div class="zhushi">每天销售288期&nbsp&nbsp每5分钟一期</div>
                                </c:when>
                                <c:otherwise>
                                    <div class="zhushi">每天销售96期&nbsp&nbsp每10分钟一期</div>
                                </c:otherwise>
                            </c:choose>

                            <div class="tongzhi">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="xiajiao">
        快速购买 福彩3D
    </div>

    <div class="mb">

    </div>

</div>
<canvas id="canvas" width="1660px" height="570px" style="position:absolute;top:265px;left:243px;z-index: -10"></canvas>
<canvas id="canvas2"  width="1660px" height="570px" style="position:absolute;top:265px;left:243px;z-index: -10"></canvas>
<%@ include file="/hall/trendchart/zstinclude.js.jsp" %>
<script>
    curl(['site/hall/trendchart/ssc/Index'], function(Page) {
        page = new Page();
    });
</script>

</body>

</html>