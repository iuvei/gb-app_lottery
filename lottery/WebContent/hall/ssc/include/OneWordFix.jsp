<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<%--@elvariable id="odds" type="Map<java.lang.String,so.wwb.gamebox.model.company.lottery.po.SiteLotteryOdd>"--%>
<%--@elvariable id="lottery" type="so.wwb.gamebox.model.company.lottery.po.SiteLotteryOdd"--%>
<c:set var="betCode" value="one" />
<%-- 一字定位 --%>
<div class="lot-content clearfix">
    <div class="fl main-left">
        <div class="hd rehd clearfix">
                <%@ include file="../../common/ShortMoney.jsp" %>
            <div class="fr">
                <div class="T-tab fix-type clearfix" style="margin-top: 5px; ">
                    <a href="javascript:void(0)" data-code="ten_thousand" class="active">万位</a>
                    <a href="javascript:void(0)" data-code="thousand">千位</a>
                    <a href="javascript:void(0)" data-code="hundred">百位</a>
                    <a href="javascript:void(0)" data-code="ten">十位</a>
                    <a href="javascript:void(0)" data-code="one">个位</a>
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
                </tr>
                </thead>
                <tbody>
<c:forEach var="i" begin="0" end="15" varStatus="o">
     <c:if test="${i%4==0}" ><tr></c:if>
    <c:if test="${i< 10}"><c:set var="betnumber" value="${i}"></c:set> </c:if>
    <c:if test="${i ==10}"><c:set var="betnumber" value="大"></c:set> </c:if>
    <c:if test="${i ==11}"><c:set var="betnumber" value="小"></c:set> </c:if>
    <c:if test="${i ==12}"><c:set var="betnumber" value="单"></c:set> </c:if>
    <c:if test="${i ==13}"><c:set var="betnumber" value="双"></c:set> </c:if>
    <c:if test="${i ==14}"><c:set var="betnumber" value="质"></c:set> </c:if>
    <c:if test="${i ==15}"><c:set var="betnumber" value="合"></c:set> </c:if>
                    <td  class="pointer"  data-num="${betnumber}"><strong></strong></td>
                    <td  class="pointer"  data-num="${betnumber}"><strong class="color-red pl"></strong></td>
                    <td  data-num="${betnumber}"><input type="text" class="table-txt" data-play="${oneDigital}"/></td>
<c:if test="${i%4==3}" ></tr></c:if>
</c:forEach>
                </tbody>
            </table>

            <table width="100%" border="1" class="total-sum">
                <thead>
                <tr>
                    <th colspan="15">总和</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <c:forEach var="i" begin="0" end="3" varStatus="o">
                        <c:if test="${i ==0}"><c:set var="betnumber" value="总大"></c:set><c:set var="playcode" value="${fiveSumBigSmall}"></c:set> </c:if>
                        <c:if test="${i ==1}"><c:set var="betnumber" value="总小"></c:set><c:set var="playcode" value="${fiveSumBigSmall}"></c:set> </c:if>
                        <c:if test="${i ==2}"><c:set var="betnumber" value="总单"></c:set><c:set var="playcode" value="${fiveSumSingleDouble}"></c:set> </c:if>
                        <c:if test="${i ==3}"><c:set var="betnumber" value="总双"></c:set><c:set var="playcode" value="${fiveSumSingleDouble}"></c:set> </c:if>
                        <td  class="pointer"  data-num="${betnumber}"><strong></strong></td>
                        <td  class="pointer"  data-num="${betnumber}"><strong class="color-red pl"></strong></td>
                        <td  data-num="${betnumber}"><input type="text" class="table-txt" data-play="${playcode}"/></td>
                    </c:forEach>
                </tr>
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
    curl(['site/hall/ssc/OneWordFix'], function(PlayWay) {
        page.playWay = new PlayWay();
    });
</script>