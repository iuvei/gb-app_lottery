<%--@elvariable id="odds" type="Map<java.lang.String,so.wwb.gamebox.model.company.lottery.po.SiteLotteryOdd>"--%>
<%--@elvariable id="lottery" type="so.wwb.gamebox.model.company.lottery.po.SiteLotteryOdd"--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<%-- 正特码 --%>
<div class="lot-content clearfix">
    <div class="fl main-left">
        <div class="hd rehd clearfix">

            <div class="fr">
                <div class="T-tab clearfix" style="margin-top: 4.4px;">

                        <a href="javascript:void(0)" min-num="5" subCode="lhc_five_no_in" class="active">五不中</a>
                        <a href="javascript:void(0)" min-num="6" subCode="lhc_six_no_in">六不中</a>
                        <a href="javascript:void(0)" min-num="7" subCode="lhc_seven_no_in">七不中</a>
                        <a href="javascript:void(0)" min-num="8" subCode="lhc_eight_no_in">八不中</a>
                        <a href="javascript:void(0)" min-num="9" subCode="lhc_nine_no_in">九不中</a>
                        <a href="javascript:void(0)" min-num="10" subCode="lhc_ten_no_in">十不中</a>
                        <a href="javascript:void(0)" min-num="11" subCode="lhc_eleven_no_in">十一不中</a>
                        <a href="javascript:void(0)" min-num="12" subCode="lhc_twelve_no_in">十二不中</a>
                </div>

                <input id="playCode5" type="hidden" value="${lhcFiveNoIn}">
                <input id="playCode6" type="hidden" value="${lhcSixNoIn}">
                <input id="playCode7" type="hidden" value="${lhcSevenNoIn}">
                <input id="playCode8" type="hidden" value="${lhcEightNoIn}">
                <input id="playCode9" type="hidden" value="${lhcNineNoIn}">
                <input id="playCode10" type="hidden" value="${lhcTenNoIn}">
                <input id="playCode11" type="hidden" value="${lhcElevenNoIn}">
                <input id="playCode12" type="hidden" value="${lhcTwelveNoIn}">

            </div>
        </div>
        <div class="table-common lhc-ztm">

            <table width="100%" border="1">
                <thead>
                    <tr>
                        <th colspan="10">
                            <strong>
                                <font id="lhc_title">三全中</font>@<font color="red" id="oddValue"></font>
                                <label class="nextOddValue" hidden>@</label>
                                <font class="nextOddValue" hidden color="red" id="nextOddValue"></font>
                                <span id="pl" class="pl red"></span>
                            </strong>
                            (请选择<font id="minNum">3</font>个及以上号码)
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
        <div class="clearfix">
            <%@ include file="../../common/ShortMoney.jsp" %>
        </div>
        <div class="btns">
            <button type="submit" class="btn btn-1">提交</button>
            <button class="btn btn-2">重设</button>
        </div>
    </div>
</div>
<script type="text/javascript">

    curl(['site/hall/lhc/hklhc/AllNoIn'], function(PlayWay) {
        page.playWay = new PlayWay();
    });

</script>
