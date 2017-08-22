<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>

<%-- 双面--%>
<div class="lot-content clearfix">
    <input type="hidden" value="${lotteryCode}" id="lotteryCode">
    <div class="fl main-left">
        <div class="hd clearfix">
            <div class="fl">快捷金额：<input type="text" class="txt"/></div>
            <%@ include file="../../common/ShortcutkeyButton.jsp" %>
        </div>

        <div class="table-common">
            <table width="100%" border="1" class="num">
                <thead>
                <tr>
                    <th colspan="12">总和、龙虎</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="i" begin="0" end="7" varStatus="o">
                    <c:if test="${o.index%4 == 0}"><tr></c:if>
                    <td style="cursor: pointer;" class="betname"><strong></strong></td>
                    <td style="cursor: pointer;" class="peilv"><strong class="color-red pl" ></strong></td>
                    <td><input type="text" class="table-txt" /></td>
                    <c:if test="${o.index % 4 == 3}"></tr></c:if>
                </c:forEach>
                </tbody>
                <thead>
                <tr>
                    <th colspan="3">第一球</th>
                    <th colspan="3">第二球</th>
                    <th colspan="3">第三球</th>
                    <th colspan="3">第四球</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="i" begin="0" end="31" varStatus="o">
                    <c:if test="${o.index%4 == 0}"><tr></c:if>
                    <td style="cursor: pointer;" class="betname"><strong></strong></td>
                    <td style="cursor: pointer;" class="peilv tdnum${i%4+2}"><strong class="color-red pl" ></strong></td>
                    <td><input type="text" class="table-txt"  /></td>
                    <c:if test="${o.index % 4 == 3}"></tr></c:if>
                </c:forEach>
                </tbody>

                <thead>
                <tr>
                    <th colspan="3">第五球</th>
                    <th colspan="3">第六球</th>
                    <th colspan="3">第七球</th>
                    <th colspan="3">第八球</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="i" begin="0" end="31" varStatus="o">
                    <c:if test="${o.index%4 == 0}"><tr></c:if>
                    <td style="cursor: pointer;"class="betname"><strong></strong></td>
                    <td style="cursor: pointer;" class="peilv tdnum${i%4+6}"><strong class="color-red pl" ></strong></td>
                    <td><input type="text" class="table-txt" /></td>
                    <c:if test="${o.index % 4 == 3}"></tr></c:if>
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
    curl(['site/hall/sfc/TwoSide.js'], function (PlayWay) {
        page.playWay = new PlayWay();
    });
</script>