<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<%--@elvariable id="i" type="so.wwb.gamebox.model.company.lottery.po.SiteLotteryOdd"--%>
<%-- 一字组合 --%>
<div class="lot-content clearfix">
    <input type="hidden" value="${code}" id="lotteryCode">
    <div class="fl main-left">
        <div class="hd rehd clearfix">
            <div class="fr">
                <div class="T-tab comb-type clearfix" style="margin-top: 5px; ">
                    <c:set var="bettingDicts" value="${dicts.lottery.lottery_betting}"/>
                    <a href="javascript:void(0)" data-code="one_all_five" class="active">${bettingDicts['one_all_five']}</a>
                    <a href="javascript:void(0)" data-code="one_first_three">${bettingDicts['one_first_three']}</a>
                    <a href="javascript:void(0)" data-code="one_in_three">${bettingDicts['one_in_three']}</a>
                    <a href="javascript:void(0)" data-code="one_after_three">${bettingDicts['one_after_three']}</a>
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
                <c:forEach var="i" begin="0" end="9" varStatus="o">
                    <c:if test="${o.index%5 == 0}"><tr></c:if>
                    <td data-num="${i}" class="pointer">
                        <strong>${i}</strong>
                    </td>
                    <td data-num="${i}" class="pointer">
                        <strong class="color-red pl odds num${i}"></strong>
                    </td>
                    <td data-num="${i}">
                        <input type="text" class="table-txt num${i}" data-play="one_combination" data-bet-num="${i}" data-bet-code="one_all_five"/>
                    </td>
                    <c:if test="${o.index % 5 == 4}"></tr></c:if>
                </c:forEach>
                </tbody>
            </table>
        </div>
        <div class="hd rehd clearfix">
            <%@ include file="../../common/ShortMoney.jsp" %>
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
    curl(['site/hall/ssc/OneWordComb'], function(PlayWay) {
        page.playWay = new PlayWay();
    });
</script>

