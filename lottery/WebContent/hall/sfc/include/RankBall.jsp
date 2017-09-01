<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<%--@elvariable id="i" type="so.wwb.gamebox.model.company.lottery.po.SiteLotteryOdd"--%>
<%-- 一字组合 --%>
<div class="lot-content clearfix">
    <input type="hidden" value="${code}" id="lotteryCode">
    <input type="hidden" value="${lotteryBetCode}" id="lotteryBetCode">
    <input type="hidden" value="${lotteryPlay}" id="lotteryPlay">
    <div class="fl main-left">
        <div class="hd rehd clearfix">
                <%@ include file="../../common/ShortMoney.jsp" %>
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
                <c:forEach var="i" begin="0" end="19" varStatus="o">
                    <c:if test="${o.index%5 == 0}"><tr></c:if>
                    <td style="cursor: pointer;" class="betname"><strong></strong></td>
                    <td style="cursor: pointer;" class="peilv" id="peilv${i+1}"><strong class="color-red pl" data-plid="9049"></strong></td>
                    <td><input type="text" class="table-txt" ></input></td>
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
        <%--<%@ include file="../include/include.result.jsp" %>--%>
    </div>
    <%-- 两面长龙排行 --%>
    <%@ include file="../include/include.rank.jsp" %>
</div>

<script type="text/javascript">
    curl(['site/hall/sfc/RankBall'], function(PlayWay) {
        page.playWay = new PlayWay();
    });
</script>

