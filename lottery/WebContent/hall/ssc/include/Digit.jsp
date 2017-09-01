<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>

<%-- 数字盘 --%>
<div class="lot-content clearfix">
    <div class="fl main-left">
        <div class="hd rehd clearfix">
                <%@ include file="../../common/ShortMoney.jsp" %>
        </div>

        <div class="table-common">
            <c:forEach var="j" begin="0" end="4">
                <c:if test="${j==0}"><c:set var="bettitle" value="万位"></c:set> </c:if>
                <c:if test="${j==1}"><c:set var="bettitle" value="千位"></c:set> </c:if>
                <c:if test="${j==2}"><c:set var="bettitle" value="百位"></c:set> </c:if>
                <c:if test="${j==3}"><c:set var="bettitle" value="十位"></c:set> </c:if>
                <c:if test="${j==4}"><c:set var="bettitle" value="个位"></c:set> </c:if>
                <table width="100%" border="1" class="tablenum${j}">
                    <thead>
                    <tr>
                        <th colspan="15">${bettitle}</th>
                    </tr>
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
                    <c:forEach begin="0" end="9" var="i">
                        <c:if test="${i%5==0}">
                            <tr>
                        </c:if>
                        <td  class="pointer num${i}" data-num="${j}-${i}"><strong></strong></td>
                        <td  class="pointer num${i}" data-num="${j}-${i}"><strong class="color-red pl"></strong></td>
                        <td  class="num${i}" data-num="${j}-${i}"><input type="text" class="table-txt"  data-play="${oneDigital}" /></td>

                        <c:if test="${(i%5 == 4)}">
                            </tr>
                        </c:if>
                    </c:forEach>
                    </tbody>
                </table>
            </c:forEach>
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
    curl(['site/hall/ssc/Digit'], function(PlayWay) {
        page.playWay = new PlayWay();
    });
</script>