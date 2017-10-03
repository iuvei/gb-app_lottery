<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<%-- 尾数连 --%>
<div class="lot-content clearfix">
    <div class="fl main-left">
        <div class="hd rehd clearfix">
            <%@ include file="../../common/ShortMoney.jsp" %>
            <div class="fr">
                <div class="T-tab clearfix" style="margin-top: 4.4px;">
                    <a href="javascript:void(0)" min-num="2" subCode="lhc_two_mantissa_link" class="active">二尾连</a>
                    <a href="javascript:void(0)" min-num="3" subCode="lhc_three_mantissa_link" >三尾连</a>
                    <a href="javascript:void(0)" min-num="4" subCode="lhc_four_mantissa_link" >四尾连</a>
                    <a href="javascript:void(0)" min-num="5" subCode="lhc_five_mantissa_link" >五尾连</a>
                </div>
                <input id="playCode2" type="hidden" value="${lhcTwoMantissaLink}">
                <input id="playCode3" type="hidden" value="${lhcThreeMantissaLink}">
                <input id="playCode4" type="hidden" value="${lhcFourMantissaLink}">
                <input id="playCode5" type="hidden" value="${lhcFiveMantissaLink}">
            </div>
        </div>
        <div class="table-common lhc-ztm">
            <table width="100%" border="1">
                <thead>
                <tr>
                    <th colspan="10">
                        <strong>
                            <font id="lhc_title">三全中</font>
                            <span id="pl" class="pl red"></span>
                        </strong>
                        (请选择<font id="minNum">3</font>个及以上号码)
                    </th>
                </tr>
                <tr>
                    <th>号码</th>
                    <th>赔率</th>
                    <th>号码</th>
                    <th>赔率</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="index" begin="0" end="9">
                    <c:if test="${index%2 == 0}">
                        <tr>
                    </c:if>
                    <td style="cursor: pointer;" class="hx-list" data-name="${index}">
                        <c:if test="${index eq 0}">
                            <strong style="margin-left:-30px">${index}</strong>
                        </c:if>
                        <c:if test="${index > 0}">
                            <strong>${index}</strong>
                        </c:if>
                        <c:set var="startNum" value="0"/>
                        <c:if test="${index eq 0}">
                            <c:set var="startNum" value="1"/>
                        </c:if>
                        <c:forEach var="numIndx" begin="${startNum}" end="4">
                            <span class="ball-icon ball-${numIndx}${index}"></span>
                        </c:forEach>
                    </td>
                    <td style="cursor: pointer;"><strong class="color-red pl"></strong></td>
                    <c:if test="${index%2 == 1}">
                        </tr>
                    </c:if>
                </c:forEach>
                </tbody>
            </table>
        </div>
        <div class="btns">
            <button type="submit" class="btn btn-1">提交</button>
            <button class="btn btn-2">重设</button>
        </div>
    </div>
</div>
<script type="text/javascript">
    curl(['site/hall/lhc/hklhc/LinkMantissa'], function(PlayWay) {
        page.playWay = new PlayWay();
    });

</script>
