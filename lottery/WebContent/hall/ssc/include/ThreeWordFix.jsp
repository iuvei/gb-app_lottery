<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>

<%-- 二字定位 --%>
<input type="hidden" value="${code}" id="lotteryCode">
<div class="lot-content clearfix">
    <div class="fl main-left">
        <div class="hd rehd clearfix">
            <div class="fr">
                <div class="T-tab fix-type clearfix" style="margin-top: 5px; " id="betCodeDiv">
                    <c:set var="bettingDicts" value="${dicts.lottery.lottery_betting}"/>
                    <a href="javascript:void(0)" id="wanqianbai" data-code="ten_thousand_thousand_hundred" class="active">${bettingDicts['ten_thousand_thousand_hundred']}</a>
                    <a href="javascript:void(0)" data-code="ten_thousand_thousand_ten" >${bettingDicts['ten_thousand_thousand_ten']}</a>
                    <a href="javascript:void(0)" data-code="ten_thousand_thousand_one" >${bettingDicts['ten_thousand_thousand_one']}</a>
                    <a href="javascript:void(0)" data-code="ten_thousand_hundred_ten" >${bettingDicts['ten_thousand_hundred_ten']}</a>
                    <a href="javascript:void(0)" data-code="ten_thousand_hundred_one" >${bettingDicts['ten_thousand_hundred_one']}</a>
                    <a href="javascript:void(0)" data-code="ten_thousand_ten_one" >${bettingDicts['ten_thousand_ten_one']}</a>
                    <a href="javascript:void(0)" data-code="thousand_hundred_ten" >${bettingDicts['thousand_hundred_ten']}</a>
                    <a href="javascript:void(0)" data-code="thousand_hundred_one" >${bettingDicts['thousand_hundred_one']}</a>
                    <a href="javascript:void(0)" data-code="thousand_ten_one" >${bettingDicts['thousand_ten_one']}</a>
                    <a href="javascript:void(0)" data-code="hundred_ten_one" >${bettingDicts['hundred_ten_one']}</a>
                </div>
            </div>
        </div>

        <div class="table-common">
            <table width="100%" border="1" id="betTalble">
                <thead>
                <tr>
                    <th colspan="21"></th>
                </tr>
                </thead>
                <tbody>
                <tr class="headtr">
                    <td style="cursor: pointer;"><strong id="touwei"></strong></td>
                    <c:forEach var="i" begin="0" end="9" varStatus="o">
                        <td style="cursor: pointer;" class="new-ball-st" data-code="${code}" data-bet-num="${i}" data-play="${threeDigital}">
                            <strong class="pl">${i}</strong>
                        </td>
                    </c:forEach>
                </tr>
                <tr class="zhongtr">
                    <td style="cursor: pointer;"><strong id="zhongwei"></strong></td>
                    <c:forEach var="i" begin="0" end="9" varStatus="o">
                        <td style="cursor: pointer;" class="new-ball-st" data-code="${code}" data-bet-num="${i}" data-play="${threeDigital}">
                            <strong class="pl">${i}</strong>
                        </td>
                    </c:forEach>
                </tr>
                <tr class="weitr">
                    <td style="cursor: pointer;"><strong id="weiwei"></strong></td>
                    <c:forEach var="i" begin="0" end="9" varStatus="o">
                        <td style="cursor: pointer;" class="new-ball-st" data-code="${code}" data-bet-num="${i}" data-play="three_digital">
                            <strong class="pl">${i}</strong>
                        </td>
                    </c:forEach>
                </tr>
                </tbody>
                <tfoot>
                <tr>
                    <td colspan="21">
                        <div class="hd clearfix rehd tzgz" id="toptouzhu">
                                <%@ include file="../../common/ShortMoney.jsp" %>
                        </div>
                    </td>
                </tr>
                </tfoot>
            </table>
        </div>

        <div class="btns">
            <button type="submit" class="btn btn-1">提交</button>
            <button class="btn btn-2">重设</button>
        </div>

        <%-- 往期结果 --%>
        <%@ include file="../include/include.result.jsp" %>
    </div>

    <%-- 两面长龙排行 --%>
    <%@ include file="../include/include.rank.jsp" %>
</div>
<script type="text/javascript">
    curl(['site/hall/ssc/ThreeWordFix'], function(PlayWay) {
        page.playWay = new PlayWay();
    });
</script>