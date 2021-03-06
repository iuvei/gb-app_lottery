<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>购彩大厅 | 所有彩票</title>
    <%@ include file="/hall/trendchart/zstinclude.head.jsp" %>
    <script src="${root}/message_<%=SessionManagerCommon.getLocale().toString()%>.js?v=${rcVersion}"></script>
</head>
<body  >
<div id="box" class="qc">
    <div class="qc" id="Right">
        <div class="main">
            <div class="main-box" style="width:1162px;">
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
                        <div class="main-li-right" style="visibility:hidden">
                            <div>
                                <a href="javascript:void(0)" onclick="getSscPage('gcdt/fc3d')">立即投注</a>
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
                                        <div class="left cl-31">开奖日期</div>
                                        <div class="left cl-31">期号</div>
                                        <div class="left cl-32">奖号</div>
                                        <div class="left cl-32" style="width:50px;">和值</div>
                                        <div class="left cl-32" style="width:50px;">跨度</div>
                                        <div class="left cl-33">
                                            <div class="cl-35">
                                                <div class="left cl-34">百位</div>
                                                <div class="left cl-34">十位</div>
                                                <div class="left cl-34">个位</div>
                                            </div>
                                            <div class="cl-35 cl-36 clean">
                                                <script>
                                                    for(var i = 0; i < 3; ++i) {
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
                                        <div class="left cl-32" style="width:130px;">
                                            <div class="cl-35">
                                                <div class="left cl-34" style="width:130px;">重号类型</div>
                                            </div>
                                            <div class="cl-35 cl-36 clean">
                                                <var class=""><i style="width:40px;">组六</i></var>
                                                <var class=""><i style="width:40px;">组三</i></var>
                                                <var class=""><i style="width:40px;">豹子</i></var>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="zhexianData"></div>
                                </div>
                            </div>

                            <div class="cl-40 clean">
                                <div class="cl-30">
                                    <div class="left cl-32" style="width:400px;">遗漏统计</div>
                                    <div class="left cl-33">
                                        <div class="cl-35">
                                            <div class="left cl-34">百位</div>
                                            <div class="left cl-34">十位</div>
                                            <div class="left cl-34">个位</div>
                                        </div>
                                        <div class="cl-35 cl-36 clean">
                                            <script>
                                                for(var i = 0; i < 3; ++i) {
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
                                    <div class="left cl-32" style="width:130px;">
                                        <div class="cl-35">
                                            <div class="left cl-34" style="width:130px;">重号类型</div>
                                        </div>
                                        <div class="cl-35 cl-36 clean">
                                            <var class="bg-1"><i style="width:40px;">组六</i></var>
                                            <var class="bg-1"><i style="width:40px;">组三</i></var>
                                            <var class="bg-1"><i style="width:40px;">豹子</i></var>
                                        </div>
                                    </div>
                                </div>
                                <div id="yiLouData">
                                    <div class="clean bg-gray">
                                        <div class="left cl-31 cl-51" style="width:400px;">出现总次数</div>
                                        <div id="cxzcs"></div>
                                    </div>
                                    <div class="clean bg-white">
                                        <div class="left cl-31 cl-51" style="width:400px;">平均遗漏值</div>
                                        <div id="pjylz"> </div>
                                    </div>
                                    <div class="clean bg-gray">
                                        <div class="left cl-31 cl-51" style="width:400px;">最大遗漏值</div>
                                        <div id="zdylz"></div>
                                    </div>
                                    <div class="clean bg-white">
                                        <div class="left cl-31 cl-51" style="width:400px;">最大连出值</div>
                                        <div id="zdlcz"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="shuju2" class="shuju hide">
                        <div class="biao">
                            <div id="main1" style="width: 1162px;;height:600px;background: #fff"></div>
                        </div>
                    </div>
                    <div id="shuju3" class="shuju hide">
                        <div id="main2" style="width: 1000px;;height:500px;"></div>
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
                        <div class="shuomingleft" style="width: 55%">
                            <div class="tou">
                                <h3>参数说明</h3>
                            </div>
                            <div class="jieshi">
                                <p><b>组三：</b> 三个号码中有两个号码相同为组三号。</p>
                                <p><b>组六：</b> 三个号码均不相同为组六号。</p>
                                <p><b>豹子：</b> 三个号码相同为豹子号。</p>
                            </div>
                        </div>
                        <div class="shuomingright" style="width:500px;">
                            <div class="tou">
                                <h4>第<span id="number"></span> 期 &nbsp <font id="openDate"></font>开奖</h4>
                            </div>
                            <a href="javascript:void(0)" class="ljtzpage"><img class="btnjiang" src="${resRoot}/themes/default/zst/img/jiang.png" alt=""></a>
                            <div class="jiezhi">
                                <h3>
                                    <p>
                                        <font id="tip"></font>
                                        <span id="leftTime"></span>
                                    </p>
                                </h3>
                            </div>
                            <div class="zhushi">每天销售1期&nbsp&nbsp每天一期</div>
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
        curl(['site/hall/trendchart/fl3/Index'], function (Page) {
            page = new Page();
        });
    });
</script>
</body>

</html>