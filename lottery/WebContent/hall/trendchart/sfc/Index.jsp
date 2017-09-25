<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>购彩大厅 | 所有彩票</title>
    <%@ include file="/hall/trendchart/zstinclude.head.jsp" %>
    <script src="${root}/message_<%=SessionManagerCommon.getLocale().toString()%>.js?v=${rcVersion}"></script>
</head>
<body  style="background-color: white">
<div id="box" class="qc">
    <div class="qc" id="Right">
        <div class="main">
            <div class="main-box" style="width:1252px;">
                <div class="main-nav">
                    <div class="cplogo" id="lotteryCode" data-code="${code}" data-type="${lotterytype}" data-id="${dataId}"><img src="${resRoot}/themes/default/img/${code}.png" alt="${dicts.lottery.lottery[code]}" /><span>${dicts.lottery.lottery[code]}</span></div>
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
                            <a href="javascript:void(0)" >立即投注</a>
                        </li>
                    </ul>
                </div>
                <div class="qhbox">
                    <div class="main-li" style="display: none">
                        <div class="main-ul-box1">
                            <ul class="main-ul-box">
                                <li>
                                    <p>二星:</p>
                                    <ul class="main-ul-1">
                                        <li>
                                            <a href="javascript:void(0)">号码分布</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">直选</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">组选</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">大小</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">奇偶</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">质合</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">跨度</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">和值</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">012路</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">平均值</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">生平降</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                            <ul class="main-ul-box">
                                <li>
                                    <p>定位:</p>
                                    <ul class="main-ul-1">
                                        <li>
                                            <a href="javascript:void(0)">万位</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">千位</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">百位</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">各位（一星）</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="main-ul-box2">
                            <ul class="main-ul-box">
                                <li>
                                    <p>三星:</p>
                                    <ul class="main-ul-1">
                                        <li>
                                            <a href="javascript:void(0)">号码分布</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">直选</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">组选</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">大小</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">奇偶</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">质合</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">跨度</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">和值</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">012路</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">平均值</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">生平降</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                            <ul class="main-ul-box">
                                <li>
                                    <p>其他:</p>
                                    <ul class="main-ul-1">
                                        <li class="red">
                                            <a href="javascript:void(0)">五星走势</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">五星综合</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">大小单双</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="main-li-right" style="visibility: hidden;">
                            <div>
                                <a href="javascript:void(0)" onclick="page.getSscPage('klsf')">立即投注</a>
                            </div>
                        </div>
                    </div>
                    <div class="search">
                        <ul class="search-left">
                            <li><label>遗漏数据<input type="checkbox" id="checkboxYlsj" checked="checked"></label></li>
                            <li><label>遗漏分层<input type="checkbox"  id="checkboxYlfc"></label></li>
                        </ul>
                        <ul class="search-right">
                            <li>
                                <div> <b>查询：</b></div>
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
                                        <div class="left cl-32" style="width:150px">奖号</div>
                                        <div class="left cl-33">
                                            <div class="cl-35">
                                                <div class="left cl-34">小区</div>
                                                <div class="left cl-34">大区</div>
                                                <div class="left cl-34" style="width:309px;">012路</div>
                                            </div>
                                            <div class="cl-35 cl-36 clean">
                                                <script>
                                                    for(var i = 1; i <= 20; ++i) {
                                                        var s = '';
                                                        if(i >= 11) {
                                                            s = 'bg-1';
                                                        } else {
                                                            s = 'bg-2'
                                                        }
                                                        document.write('<var class="' + s + '"><i>' + i + '</i></var>');
                                                    }
                                                </script>
                                                <var><i style="width:100px">0路</i></var>
                                                <var><i style="width:100px">1路</i></var>
                                                <var><i style="width:100px">2路</i></var>
                                            </div>
                                        </div>
                                        <div class="left cl-32">跨度</div>
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
                                    <div class="left cl-32" style="width:150px">奖号</div>
                                    <div class="left cl-33">
                                        <div class="cl-35">
                                            <div class="left cl-34">小区</div>
                                            <div class="left cl-34">大区</div>
                                            <div class="left cl-34" style="width:309px;">012路</div>
                                        </div>
                                        <div class="cl-35 cl-36 clean">
                                            <script>
                                                for(var i = 1; i <= 20; ++i) {
                                                    var s = '';
                                                    if(i >= 11) {
                                                        s = 'bg-1';
                                                    } else {
                                                        s = 'bg-2'
                                                    }
                                                    document.write('<var class="' + s + '"><i>' + i + '</i></var>');
                                                }
                                            </script>
                                            <var><i style="width:100px">0路</i></var>
                                            <var><i style="width:100px">1路</i></var>
                                            <var><i style="width:100px">2路</i></var>
                                        </div>
                                    </div>
                                    <div class="left cl-32">跨度</div>
                                </div>
                                <div id="yiLouData">
                                    <div class="clean bg-gray">
                                        <div class="left cl-31 cl-51" style="width:250px;">出现总次数</div>
                                        <div id="cxzcs"></div>
                                    </div>
                                    <div class="clean bg-white">
                                        <div class="left cl-31 cl-51" style="width:250px;">平均遗漏值</div>
                                        <div id="pjylz"> </div>
                                    </div>
                                    <div class="clean bg-gray">
                                        <div class="left cl-31 cl-51" style="width:250px;">最大遗漏值</div>
                                        <div id="zdylz"></div>
                                    </div>
                                    <div class="clean bg-white">
                                        <div class="left cl-31 cl-51" style="width:250px;">最大连出值</div>
                                        <div id="zdlcz"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="shuju2" class="shuju hide">
                        <div class="biao">
                            <div id="main1" style="width: 1081px;height:600px;background: #fff"></div>
                        </div>
                    </div>
                    <div id="shuju3" class="shuju hide">
                        <div id="main2" style="width: 1081px;height:500px;"></div>
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
                        <table >
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
                        <div class="shuomingleft" style="width:58%; margin-left: 10px;height: auto">
                            <div class="tou">
                                <h3>参数说明</h3>
                            </div>
                            <div class="jieshi">
                                <p><b>大小：</b> 号码01-20中，01-10为小，11-20为大。</p>
                                <p><b>奇偶：</b> 能被2整除的号码为偶数，不能被2整除的号码为奇数。号码01-20中奇偶数如下：</p>
                                <p>[奇数] 01 03 05 07 09 11 13 15 17 19</p>
                                <p>[偶数] 02 04 06 08 10 12 14 16 18 20</p>
                                <p style="line-height: 18px"><b>质合：</b> 只能被1和自身整除的数为质数，除了能被1和自身整除，还能被其它数整除的数为合数。号码01-20中质合数如下：</p>
                                <p>[质数] 01 02 03 05 07 11 13 17 19</p>
                                <p>[合数] 04 06 08 09 10 12 14 15 16 18 20</p>
                                <p><b>012路：</b> 号码01-20中，除3余0的为0路，除3余1的为1路，除3余2的为2路。</p>
                                <p><b>“0路”为除3余0数据：</b> 03、06、09、12、15、18；</p>
                                <p><b>“1路”为除3余1数据：</b> 01、04、07、10、13、16、19；</p>
                                <p><b>“2路”为除3余2数据：</b> 02、05、08、11、14、17、20；</p>
                                <p><b>跨度：</b> 开奖号码中最大号码与最小号码的差。</p>
                                <p><b>遗漏分层：</b> 将当前遗漏按照“1-5，6-11，12-无穷大”分别用黑色、蓝色、红色标识。</p>
                                <p><b>分隔线：</b> 每五期使用分隔线，使横向导航更加清晰。</p>
                                <p><b>出现总次数：</b> 统计期数内实际出现的次数。</p>
                                <p><b>遗漏：</b> 自上期开出到本期间隔的期数。</p>
                                <p><b>平均遗漏：</b> 统计期数内遗漏的平均值。计算公式：平均遗漏＝统计期数/(出现次数+1)。</p>
                                <p><b>最大遗漏：</b> 统计期数内遗漏的最大值。</p>
                                <p><b>当前遗漏：</b> 自上期开出到当前期所间隔的期数。</p>
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
                                    <p><font id="tip"></font></p>
                                    <p><span id="leftTime"></span></p>
                                </h3>
                            </div>
                            <c:choose>
                                <c:when test="${code eq 'gdkl10'}">
                                    <div class="zhushi">每天销售84期&nbsp&nbsp每10分钟一期</div>
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
<canvas id="canvas2" width="1660px" height="570px" style="position:absolute;top:265px;left:243px;z-index: -10"></canvas>
<%@ include file="/hall/trendchart/zstinclude.js.jsp" %>
<script>
    $(function() {
        curl(['site/hall/trendchart/sfc/Index'], function (Page) {
            page = new Page();
        });
    });
</script>
</body>

</html>