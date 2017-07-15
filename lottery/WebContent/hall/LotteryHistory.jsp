<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>购彩大厅 | 所有彩票</title>
    <%@ include file="/include/include.head.jsp" %>
    <script src="${root}/message_<%=SessionManagerCommon.getLocale().toString()%>.js?v=${rcVersion}"></script>

</head>

<body>
<form action="${root}/lotteryResultHistory/queryLotteryResultByCode.html">
<div id="gameContent">
    <div class="Single Resultt wid1">
        <div class="latyout layout at">
            <div class="tabs_ce at">
                <ul>
                    <li class="lot-fre-type acti nob" data-subnav="0" name="top" id="lot_type_">
                        <a href="javascript:void(0)" onclick="queryLotteryByFrequency('')">全部彩种</a>
                    </li>
                    <c:forEach var="type" items="${lotteryFrequencyType}" varStatus="vs">
                        <li class="lot-fre-type " data-subnav="${type.key}" id="lot_type_${type.key}">
                            <a href="javascript:void(0)" onclick="queryLotteryByFrequency('${type.key}')">${type.value.frequencyName}</a>
                        </li>
                    </c:forEach>

                    <%--<li class="lot-fre-type " data-subnav="7" id="lot_type_search">
                        <a href="javascript:void(0)" onclick="queryLotteryByFrequency('search')">开奖搜索</a>
                    </li>--%>
                </ul>
            </div>
            <div id="sscContent" class="kjjg">
                <%@include file="result/AllLottery.jsp" %>
            </div>
        </div>
    </div><!--Single-->

</div>
</form>
<%@ include file="/include/include.js.jsp" %>
<script src="${resRoot}/themes/default/member/js/global.js?v=${rcVersion}"></script>
<script>
    $(function () {
        parent.layer.closeAll();
        $('div.loader', parent.document).remove();
        // 闪烁
        var blinkColorArr = "#fa6200|#0f3f94".split("|");
        $(".blink").each(function() {
            var obj = $(this);
            setInterval(function() {
                var tmpColor = blinkColorArr[parseInt(Math.random() * blinkColorArr.length)];
                $(obj).css("color", tmpColor);
            },200);
        });
    });

    function getPage(url) {
        parent.getPage(url);
    }
    function getZstPage(url) {
        getPage("./zst/" + url + ".html");
    }
    function getSscPage(url) {
        parent.getSscPage(url);
    }
    function queryLotteryByFrequency(fid) {
        if(fid!="search"){
            $.ajax({
                type: "post",
                url: root + '/lotteryResultHistory/queryLotteryByFrequency.html?search.lotteryFrequencyId='+fid,
                timeout: 60000,
                success: function (data) {
                    $("#sscContent").html(data);
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                },
                beforeSend: function () {
                    parent.showLoading();
                },
                complete: function () {
                    parent.hideLoading();
                    $(".lot-fre-type").removeClass("acti");
                    $("#lot_type_"+fid).addClass("acti");
                }
            });
        }

    }
</script>

</body>
</html>