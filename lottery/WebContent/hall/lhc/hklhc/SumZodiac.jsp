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

                    <a href="javascript:void(0)" min-num="2" subCode="lhc_two_zodiac" class="active">二肖</a>
                    <a href="javascript:void(0)" min-num="3" subCode="lhc_three_zodiac" >三肖</a>
                    <a href="javascript:void(0)" min-num="4" subCode="lhc_four_zodiac" >四肖</a>
                    <a href="javascript:void(0)" min-num="5" subCode="lhc_five_zodiac" >五肖</a>
                    <a href="javascript:void(0)" min-num="6" subCode="lhc_six_zodiac" >六肖</a>
                    <a href="javascript:void(0)" min-num="7" subCode="lhc_seven_zodiac" >七肖</a>
                    <a href="javascript:void(0)" min-num="8" subCode="lhc_eight_zodiac" >八肖</a>
                    <a href="javascript:void(0)" min-num="9" subCode="lhc_nine_zodiac" >九肖</a>
                    <a href="javascript:void(0)" min-num="10" subCode="lhc_ten_zodiac" >十肖</a>
                    <a href="javascript:void(0)" min-num="11" subCode="lhc_eleven_zodiac" >十一肖</a>

                </div>
                <input id="playCode" type="hidden" value="${lhcSumZodiac}">
            </div>
        </div>
        <div class="table-common lhc-ztm">

            <table width="100%" border="1">
                <thead>
                <tr>
                    <th colspan="10">
                        <strong>
                            <font id="lhc_title">三全中</font>@<font color="red" id="oddValue"></font>
                            <span id="pl" class="pl red"></span>
                        </strong>
                        (请选择<font id="minNum">3</font>个及以上号码)
                    </th>
                </tr>
                <tr>
                    <th>号码</th> <th>号码</th>
                </tr>
                </thead>

                <tbody>
                <tr>
                    <td style="cursor: pointer;" class="hx-list" data-name="鼠">
                        <strong>鼠</strong>
                        <c:forEach var="item" items="${zodiacNum['鼠']}">
                            <span class="ball-icon ball-${item}"></span>
                        </c:forEach>
                    </td>
                    <td style="cursor: pointer;" class="hx-list" data-name="牛">
                        <strong>牛</strong>
                        <c:forEach var="item" items="${zodiacNum['牛']}">
                            <span class="ball-icon ball-${item}"></span>
                        </c:forEach>
                    </td>
                </tr>
                <tr>
                    <td style="cursor: pointer;" class="hx-list" data-name="虎">
                        <strong>虎</strong>
                        <c:forEach var="item" items="${zodiacNum['虎']}">
                            <span class="ball-icon ball-${item}"></span>
                        </c:forEach>
                    </td>

                    <td style="cursor: pointer;" class="hx-list" data-name="兔">
                        <strong>兔</strong>
                        <c:forEach var="item" items="${zodiacNum['兔']}">
                            <span class="ball-icon ball-${item}"></span>
                        </c:forEach>
                    </td>
                </tr>
                <tr>
                    <td style="cursor: pointer;" class="hx-list" data-name="龙">
                        <strong>龙</strong>
                        <c:forEach var="item" items="${zodiacNum['龙']}">
                            <span class="ball-icon ball-${item}"></span>
                        </c:forEach>
                    </td>

                    <td style="cursor: pointer;" class="hx-list" data-name="蛇">
                        <strong>蛇</strong>
                        <c:forEach var="item" items="${zodiacNum['蛇']}">
                            <span class="ball-icon ball-${item}"></span>
                        </c:forEach>
                    </td>
                </tr>
                <tr>
                    <td style="cursor: pointer;" class="hx-list" data-name="马">
                        <strong>马</strong>
                        <c:forEach var="item" items="${zodiacNum['马']}">
                            <span class="ball-icon ball-${item}"></span>
                        </c:forEach>
                    </td>

                    <td style="cursor: pointer;" class="hx-list" data-name="羊">
                        <strong>羊</strong>
                        <c:forEach var="item" items="${zodiacNum['羊']}">
                            <span class="ball-icon ball-${item}"></span>
                        </c:forEach>
                    </td>
                </tr>
                <tr>
                    <td style="cursor: pointer;" class="hx-list" data-name="猴">
                        <strong>猴</strong>
                        <c:forEach var="item" items="${zodiacNum['猴']}">
                            <span class="ball-icon ball-${item}"></span>
                        </c:forEach>
                    </td>

                    <td style="cursor: pointer;" class="hx-list" data-name="鸡">
                        <strong style="margin-left:30px">鸡</strong>
                        <c:forEach var="item" items="${zodiacNum['鸡']}">
                            <span class="ball-icon ball-${item}"></span>
                        </c:forEach>
                    </td>
                </tr>
                <tr>
                    <td style="cursor: pointer;" class="hx-list" data-name="狗">
                        <strong>狗</strong>
                        <c:forEach var="item" items="${zodiacNum['狗']}">
                            <span class="ball-icon ball-${item}"></span>
                        </c:forEach>
                    </td>

                    <td style="cursor: pointer;" class="hx-list" data-name="猪">
                        <strong>猪</strong>
                        <c:forEach var="item" items="${zodiacNum['猪']}">
                            <span class="ball-icon ball-${item}"></span>
                        </c:forEach>
                    </td>
                </tr>
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

    curl(['site/hall/lhc/hklhc/SumZodiac'], function(PlayWay) {
        page.playWay = new PlayWay();
    });

</script>
