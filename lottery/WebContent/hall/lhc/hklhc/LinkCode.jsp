<%--@elvariable id="odds" type="Map<java.lang.String,so.wwb.gamebox.model.company.lottery.po.SiteLotteryOdd>"--%>
<%--@elvariable id="lottery" type="so.wwb.gamebox.model.company.lottery.po.SiteLotteryOdd"--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<%-- 正特码 --%>
<div class="lot-content clearfix">
    <div class="fl main-left">
        <div class="hd rehd clearfix">
                <%@ include file="../../common/ShortMoney.jsp" %>
            <div class="fr">
                <div class="T-tab clearfix" style="margin-top: 4.4px;">
                        <a href="javascript:void(0)" min-num="3" subCode="lhc_three_all_in" class="active">三全中</a>
                        <a href="javascript:void(0)" min-num="3" subCode="lhc_three_in_two">三中二</a>
                        <a href="javascript:void(0)" min-num="2" subCode="lhc_two_all_in">二全中</a>
                        <a href="javascript:void(0)" min-num="2" subCode="lhc_two_in_special">二中特</a>
                        <a href="javascript:void(0)" min-num="2" subCode="lhc_special_strand">特串</a>
                        <a href="javascript:void(0)" min-num="4" subCode="lhc_four_all_in">四全中</a>
                </div>
                <input id="lhc_two_all_in" type="hidden" value="${lhcTwoAllIn}">
                <input id="lhc_three_all_in" type="hidden" value="${lhcThreeAllIn}">
                <input id="lhc_four_all_in" type="hidden" value="${lhcFourAllIn}">
                <input id="lhc_three_in_two" type="hidden" value="${lhcThreeInTwo}">
                <input id="lhc_two_in_special" type="hidden" value="${lhcTwoInSpecial}">
                <input id="lhc_special_strand" type="hidden" value="${lhcSpecialStrand}">

            </div>
        </div>
        <div class="table-common lhc-ztm">

            <table width="100%" border="1">
                <thead>
                    <tr>
                        <th colspan="10">
                            <strong>
                                <font id="lhc_title">三全中</font>@<font color="red" id="oddValue"></font>&nbsp;&nbsp;&nbsp;
                                <font id="nextOddTitle" class="nextOddValue"></font>
                                <label class="nextOddValue" hidden>@</label>
                                <font class="nextOddValue" hidden color="red" id="nextOddValue"></font>
                                <span id="pl" class="pl red"></span>
                            </strong>
                            (请选择<font id="minNum" color="red">3</font>个及以上号码)
                        </th>
                    </tr>
                    <tr>
                        <th>号码</th>
                        <th>号码</th>
                        <th>号码</th>
                        <th>号码</th>
                        <th>号码</th>
                        <th>号码</th>
                        <th>号码</th>
                        <th>号码</th>
                        <th>号码</th>
                        <th>号码</th>
                    </tr>
                </thead>

                <tbody>
                <c:forEach var="i" begin="0" end="4">
                    <tr>
                        <c:forEach var="j" begin="1" end="10">
                            <c:set var="num" value="${i*10+j}"/>
                            <c:if test="${num < 50}">
                                <c:set var="dataName" value="${num}"/>
                                <c:if test="${num < 10}">
                                    <c:set var="dataName" value="0${num}"/>
                                </c:if>
                                <td style="cursor: pointer;" class="new-ball-st lhc-num" num="${dataName}" data-name="${dataName}"><strong class="pl">${num}</strong></td>
                            </c:if>
                            <c:if test="${num eq 50}">
                                <td class="new-ball-st"></td>
                            </c:if>
                        </c:forEach>
                    </tr>
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

    curl(['site/hall/lhc/hklhc/LinkCode'], function(PlayWay) {
        page.playWay = new PlayWay();
    });

</script>
