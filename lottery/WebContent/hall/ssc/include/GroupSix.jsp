<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<%--@elvariable id="i" type="so.wwb.gamebox.model.company.lottery.po.SiteLotteryOdd"--%>
<%-- 一字组合 --%>
<div class="lot-content clearfix">
    <input type="hidden" value="${code}" id="lotteryCode">
    <div class="fl main-left">
        <div class="hd rehd clearfix">
                <%@ include file="../../common/ShortMoney.jsp" %>
            <div class="fr">
                <div class="T-tab comb-type clearfix" style="margin-top: 5px; ">
                    <a href="javascript:void(0)" data-code="group6_first_three" class="active">前三组选六</a>
                    <a href="javascript:void(0)" data-code="group6_in_three">中三组选六</a>
                    <a href="javascript:void(0)" data-code="group6_after_three">后三组选六</a>
                </div>
            </div>
        </div>
        <div class="table-common">
            <table width="100%" border="1" class="num">
                <thead>
                <tr>
                    <th colspan="10"><strong>前三组选六@<span id="pl" class="pl red"></span></strong> (请选择4~8个号码)</th>
                </tr>
                <tr>
                    <th>号码</th>
                    <th>号码</th>
                    <th>号码</th>
                    <th>号码</th>
                    <th>号码</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="i" begin="0" end="9" varStatus="o">
                    <c:if test="${o.index%5 == 0}"><tr></c:if>
                    <td style="cursor: pointer;" class="new-ball-st"><strong class="pl">${i}</strong><input type="checkbox" data-num="${i}" data-play="${lotteryPlay}"></td>
                    <c:if test="${o.index % 5 == 4}"></tr></c:if>
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
<script>
    var lotteryPlay = "${lotteryPlay}";
</script>
<script type="text/javascript">
    curl(['site/hall/ssc/GroupSix'], function (PlayWay) {
        page.playWay = new PlayWay();
    });
</script>
