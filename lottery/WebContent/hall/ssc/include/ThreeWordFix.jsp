<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>

<%-- 二字定位 --%>
<input type="hidden" value="${code}" id="lotteryCode">
<div class="lot-content clearfix">
    <div class="fl main-left">
        <div class="hd clearfix">
            <div class="fl">快捷金额：<input type="text" class="txt"></div>
            <div class="fr">
                <div class="T-tab fix-type clearfix" style="margin-top: 5px; ">
                    <c:set var="bettingDicts" value="${dicts.lottery.lottery_betting}"/>
                    <a href="javascript:void(0)" id="wanqianbai" data-code="ten_thousand_thousand_hundred" class="active">${bettingDicts['ten_thousand_thousand_hundred']}</a>
                    <a href="javascript:void(0)" data-code="ten_thousand_thousand_ten" >${bettingDicts['ten_thousand_thousand_ten']}</a>
                    <a href="javascript:void(0)" data-code="ten_thousand_thousand_one" >${bettingDicts['ten_thousand_thousand_one']}</a>
                    <a href="javascript:void(0)" data-code="ten_thousand_hundred_ten" >${bettingDicts['ten_thousand_hundred_ten']}</a>
                    <a href="javascript:void(0)" data-code="ten_thousand_ten_one" >${bettingDicts['ten_thousand_ten_one']}</a>
                    <a href="javascript:void(0)" data-code="thousand_hundred_ten" >${bettingDicts['thousand_hundred_ten']}</a>
                    <a href="javascript:void(0)" data-code="thousand_hundred_one" >${bettingDicts['thousand_hundred_one']}</a>
                    <a href="javascript:void(0)" data-code="thousand_ten_one" >${bettingDicts['thousand_ten_one']}</a>
                    <a href="javascript:void(0)" data-code="hundred_ten_one" >${bettingDicts['hundred_ten_one']}</a>
                </div>
            </div>
        </div>

        <div class="table-common">

            <table width="100%" border="1" class="num">
                <thead>
                <tr>
                    <th width="47">号码</th>
                    <th width="56">赔率</th>
                    <th>金额</th>
                    <th width="47">号码</th>
                    <th width="56">赔率</th>
                    <th>金额</th>
                    <th width="47">号码</th>
                    <th width="56">赔率</th>
                    <th>金额</th>
                    <th width="47">号码</th>
                    <th width="56">赔率</th>
                    <th>金额</th>
                    <th width="47">号码</th>
                    <th width="56">赔率</th>
                    <th>金额</th>
                </tr>
                </thead>
                <tbody>

                        <c:forEach varStatus="status" var="i" begin="0" end="999">
                            <c:choose>
                                <c:when test="${i<10}">
                                    <c:set var="betNum" value="00${i}"></c:set>
                                </c:when>
                                <c:when test="${10<=i && i<100}">
                                    <c:set var="betNum" value="0${i}"></c:set>
                                </c:when>
                                <c:otherwise>
                                    <c:set var="betNum" value="${i}"></c:set>
                                </c:otherwise>
                            </c:choose>
                            <c:if test="${status.index % 5 == 0}"><tr></c:if>
                            <td data-num="${betNum}" class="pointer"><strong>${betNum}</strong></td>
                            <td data-num="${betNum}" class="pointer"><strong class="color-red pl num${betNum}"></strong></td>
                            <td data-num="${betNum}">
                                <input type="text" class="table-txt num${betNum}" data-name="" data-odds="" data-bet-code="" data-play="${threeDigital}" data-bet-num="${betNum}"/>
                            </td>
                            <c:if test="${status.index % 5 == 4}"></tr></c:if>
                        </c:forEach>

                </tbody>
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