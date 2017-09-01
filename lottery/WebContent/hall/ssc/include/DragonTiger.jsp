<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>

<%-- 龙虎--%>
<div class="lot-content clearfix">
    <input type="hidden" value="${code}" id="lotteryCode">
    <div class="fl main-left">
        <div class="hd rehd clearfix">
            <%@ include file="../../common/ShortMoney.jsp" %>
        </div>

        <div class="table-common">
            <c:forEach var="i" begin="0" end="2" varStatus="o">
                <div class="table-common clearfix">
                    <table width="100%" border="1">
                        <thead>
                        <tr>
                            <th></th>
                            <c:if test="${i==0}">
                            <th colspan="2" data-code="dragon_tiger_12">万仟</th>
                            <th colspan="2" data-code="dragon_tiger_13">万佰</th>
                            <th colspan="2" data-code="dragon_tiger_14">万拾</th>
                            <th colspan="2" data-code="dragon_tiger_15">万个</th>
                            </c:if>
                            <c:if test="${i==1}">
                                <th colspan="2" data-code="dragon_tiger_23">仟佰</th>
                                <th colspan="2" data-code="dragon_tiger_24">仟拾</th>
                                <th colspan="2" data-code="dragon_tiger_25">仟个</th>
                            </c:if>
                            <c:if test="${i==2}">
                                <th colspan="2" data-code="dragon_tiger_34">佰拾</th>
                                <th colspan="2" data-code="dragon_tiger_35">佰个</th>
                                <th colspan="2" data-code="dragon_tiger_45">拾个</th>
                            </c:if>
                        </tr>
                        <tr>
                            <th>组合</th>
                            <th>赔率</th>
                            <th>金额</th>
                            <th>赔率</th>
                            <th>金额</th>
                            <th>赔率</th>
                            <th>金额</th>
                            <c:if test="${i==0}">
                            <th>赔率</th>
                            <th>金额</th>
                            </c:if>
                        </tr>
                        </thead>

                        <tbody>
                        <c:forEach var="j" begin="0" end="2" varStatus="p">
                            <tr>
                                <c:if test="${j==0}"> <th><strong>龙</strong></th></c:if>
                                <c:if test="${j==1}"> <th><strong>和</strong></th></c:if>
                                <c:if test="${j==2}"> <th><strong>虎</strong></th></c:if>
                                <c:if test="${i==0}">
                                <td style="cursor: pointer;" class="peilv dragon_tiger_12"><strong class="color-red pl"></strong></td>
                                <td class="jine dragon_tiger_12"><input type="text" class="table-txt"></td>
                                <td class="peilv dragon_tiger_13" style="cursor: pointer;" ><strong class="color-red pl"></strong></td>
                                <td class="jine dragon_tiger_13"><input type="text" class="table-txt"></td>
                                <td class="peilv dragon_tiger_14" style="cursor: pointer;" ><strong class="color-red pl"></strong></td>
                                <td  class="jine dragon_tiger_14"><input type="text" class="table-txt"></td>
                                <td class="peilv dragon_tiger_15" style="cursor: pointer;" ><strong class="color-red pl"></strong></td>
                                <td  class="jine dragon_tiger_15"><input type="text" class="table-txt"></td>
                                </c:if>
                                <c:if test="${i==1}">
                                    <td style="cursor: pointer;"  class="peilv dragon_tiger_23"><strong class="color-red pl"></strong></td>
                                    <td  class="jine dragon_tiger_23"><input type="text" class="table-txt"></td>
                                    <td class="peilv dragon_tiger_24" style="cursor: pointer;" ><strong class="color-red pl"></strong></td>
                                    <td  class="jine dragon_tiger_24"><input type="text" class="table-txt"></td>
                                    <td class="peilv dragon_tiger_25" style="cursor: pointer;" ><strong class="color-red pl"></strong></td>
                                    <td class="jine dragon_tiger_25"><input type="text" class="table-txt"></td>
                                </c:if>
                                <c:if test="${i==2}">
                                    <td style="cursor: pointer;"  class="peilv dragon_tiger_34"><strong class="color-red pl"></strong></td>
                                    <td  class="jine dragon_tiger_34"><input type="text" class="table-txt"></td>
                                    <td class="peilv dragon_tiger_35" style="cursor: pointer;" ><strong class="color-red pl"></strong></td>
                                    <td class="jine dragon_tiger_35"><input type="text" class="table-txt"></td>
                                    <td class="peilv dragon_tiger_45" style="cursor: pointer;" ><strong class="color-red pl"></strong></td>
                                    <td class="jine dragon_tiger_45"><input type="text" class="table-txt"></td>
                                </c:if>
                            </tr>
                        </c:forEach>
                        </tbody></table>
                </div>
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
<script>
    var lotteryPlay = "${lotteryPlay}";
</script>
<script type="text/javascript">
    curl(['site/hall/ssc/DragonTiger.js'], function (PlayWay) {
        page.playWay = new PlayWay();
    });
</script>