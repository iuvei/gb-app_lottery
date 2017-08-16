<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>

<%-- 龙虎--%>
<div class="lot-content clearfix">
    <input type="hidden" value="${code}" id="lotteryCode">
    <div class="fl main-left">
        <div class="hd clearfix">
            <div class="fl">快捷金额：<input type="text" class="txt"/></div>
        </div>


            <c:forEach var="i" begin="0" end="4" varStatus="o">
                <c:set var="lnum" value="5"></c:set>
                <c:if test="${i==4}"><c:set var="lnum" value="3"></c:set></c:if>
                <div class="table-common clearfix">
                <c:forEach var="j" begin="0" end="${lnum}" varStatus="o">

                    <table width="111" border="1" class="item">
                        <tbody>
                        <c:set var="tnum" value="${j+i*6}"></c:set>
                        <tr class="pname">
                            <td style="cursor: pointer;"></td>
                            <td style="cursor: pointer;"></td>
                        </tr>

                        <tr class="peilv tablenum${tnum}">
                            <td style="cursor: pointer;"><span class="color-red pl" ></span></td>
                            <td style="cursor: pointer;"><span class="color-red pl" ></span></td>
                        </tr>

                        <tr>
                            <td><input type="text" class="table-txt"/></td>
                            <td><input type="text" class="table-txt" /></td>
                        </tr>
                        </tbody>
                    </table>
                </c:forEach>
                </div>
            </c:forEach>


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
    curl(['site/hall/sfc/DragonTiger.js'], function (PlayWay) {
        page.playWay = new PlayWay();
    });
</script>