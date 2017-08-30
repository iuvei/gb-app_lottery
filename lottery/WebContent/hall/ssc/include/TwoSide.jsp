<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>

<%-- 双面 --%>
<div class="lot-content clearfix">
    <div class="fl main-left">
        <div class="hd rehd clearfix">
                <%@ include file="../../common/ShortMoney.jsp" %>
        </div>

        <div class="table-common">
              <c:forEach  var="i" begin="0" end="4">
                  <c:if test="${i==0}"><c:set var="bettitle" value="万位"></c:set> </c:if>
                  <c:if test="${i==1}"><c:set var="bettitle" value="千位"></c:set> </c:if>
                  <c:if test="${i==2}"><c:set var="bettitle" value="百位"></c:set> </c:if>
                  <c:if test="${i==3}"><c:set var="bettitle" value="十位"></c:set> </c:if>
                  <c:if test="${i==4}"><c:set var="bettitle" value="个位"></c:set> </c:if>
                  <table width="100%" border="1" class="tablenum${i}">
                      <thead>
                      <tr>
                          <th colspan="9">${bettitle}</th>
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
                      </tr>
                      </thead>
                      <tbody>
                      <c:forEach var="j" begin="0" end="5">
                     <c:if test="${j%3==0}"><tr></c:if>
                          <c:if test="${j==0 || j==3}"><c:set var="playcode" value="${oneBigSmall}"></c:set> </c:if>
                          <c:if test="${j==1 || j==4}"><c:set var="playcode" value="${oneSingleDouble}"></c:set> </c:if>
                          <c:if test="${j==2 || j==5}"><c:set var="playcode" value="${onePrimeCombined}"></c:set> </c:if>
                          <td data-num="${i}-${j}" class="pointer num${j}"><strong></strong></td>
                          <td data-num="${i}-${j}" class="pointer num${j}"><strong class="color-red pl"></strong></td>
                          <td data-num="${i}-${j}" class="num${j}"><input type="text" class="table-txt" data-play="${playcode}" ></td>
                      <c:if test="${j%3==2}"></tr></c:if>
                      </c:forEach>
                      </tbody>
                  </table>
              </c:forEach>

                <table width="100%" border="1" class="tablenum5">
                    <thead>
                    <tr>
                        <th colspan="9">总和</th>
                    </tr>
                    <tr>
                        <th width="47">号码</th>
                        <th width="56">赔率</th>
                        <th>金额</th>
                        <th width="47">号码</th>
                        <th width="56">赔率</th>
                        <th>金额</th>

                    </tr>
                    </thead>

                    <tbody>
                    <tr>
                        <td data-num="1" class="pointer num1"><strong></strong></td>
                        <td data-num="1" class="pointer num1"><strong class="color-red pl"></strong></td>
                        <td data-num="1" class="num1"><input type="text" class="table-txt"   data-play="${fiveSumBigSmall}" ></td>

                        <td data-num="2" class="pointer num2"><strong></strong></td>
                        <td data-num="2" class="pointer num2"><strong class="color-red pl"></strong></td>
                        <td data-num="2" class="num2"><input type="text" class="table-txt"   data-play="${fiveSumSingleDouble}" ></td>
                    </tr>

                    <tr>
                        <td data-num="3" class="pointer num3"><strong></strong></td>
                        <td data-num="3" class="pointer num3"><strong class="color-red pl"></strong></td>
                        <td data-num="3" class="num3"><input type="text" class="table-txt"  data-play="${fiveSumBigSmall}" ></td>

                        <td data-num="4" class="pointer num4"><strong></strong></td>
                        <td data-num="4" class="pointer num4"><strong class="color-red pl"></strong></td>
                        <td data-num="4" class="num4"><input type="text" class="table-txt"data-play="${fiveSumSingleDouble}"></td>
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
    curl(['site/hall/ssc/TwoSide'], function(PlayWay) {
        page.playWay = new PlayWay();
    });
</script>