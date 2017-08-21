<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>

<%-- 二字定位 --%>
<input type="hidden" value="${code}" id="lotteryCode">
<div class="lot-content clearfix">
    <div class="fl main-left">
        <div class="hd clearfix">
            <%--<div class="fl">快捷金额：<input type="text" class="txt"></div>--%>
            <div class="fr">
                <div class="T-tab fix-type clearfix" style="margin-top: 5px; ">
                    <c:set var="bettingDicts" value="${dicts.lottery.lottery_betting}"/>
                    <a href="javascript:void(0)" id="qianbai" data-code="ten_thousand_thousand" class="active">${bettingDicts['ten_thousand_thousand']}</a>
                    <a href="javascript:void(0)" data-code="ten_thousand_hundred">${bettingDicts['ten_thousand_hundred']}</a>
                    <a href="javascript:void(0)" data-code="ten_thousand_ten">${bettingDicts['ten_thousand_ten']}</a>
                    <a href="javascript:void(0)" data-code="ten_thousand_one">${bettingDicts['ten_thousand_one']}</a>
                    <a href="javascript:void(0)" data-code="thousand_hundred">${bettingDicts['thousand_hundred']}</a>
                    <a href="javascript:void(0)" data-code="thousand_ten">${bettingDicts['thousand_ten']}</a>
                    <a href="javascript:void(0)" data-code="thousand_one">${bettingDicts['thousand_one']}</a>
                    <a href="javascript:void(0)" data-code="hundred_ten">${bettingDicts['hundred_ten']}</a>
                    <a href="javascript:void(0)" data-code="hundred_one">${bettingDicts['hundred_one']}</a>
                    <a href="javascript:void(0)" data-code="ten_one">${bettingDicts['ten_one']}</a>
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
                    <td style="cursor: pointer;"><strong>头</strong></td>
<c:forEach var="i" begin="0" end="9" varStatus="o">
                    <td style="cursor: pointer;"><strong class="pl">${i}</strong></td>
                    <td><input type="checkbox" data-code="${code}" data-bet-num="${i}" data-play="two_digital"></td>
</c:forEach>
                </tr>
                <tr class="weitr">
                    <td style="cursor: pointer;"><strong>尾</strong></td>
                    <c:forEach var="i" begin="0" end="9" varStatus="o">
                        <td style="cursor: pointer;"><strong class="pl">${i}</strong></td>
                        <td><input type="checkbox" data-code="${code}" data-bet-num="${i}" data-play="two_digital"></td>
                    </c:forEach>
                </tr>
                </tbody>
                <tfoot>
                <tr>
                    <td colspan="21">
                        <div class="hd clearfix rehd tzgz" id="toptouzhu">
                            <div class="fl refl xzje">
                                下注金额：<input type="text" class="txt" id="inputMoney">
                            </div>
                            <%@ include file="../../common/ShortcutkeyButton.jsp" %>
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
    curl(['site/hall/ssc/TwoWordFix'], function(PlayWay) {
        page.playWay = new PlayWay();
    });
</script>
