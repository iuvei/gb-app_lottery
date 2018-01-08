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
                    <a href="javascript:void(0)" min-num="2" subCode="lhc_two_zodiac_link" class="active">二肖连</a>
                    <a href="javascript:void(0)" min-num="3" subCode="lhc_three_zodiac_link" >三肖连</a>
                    <a href="javascript:void(0)" min-num="4" subCode="lhc_four_zodiac_link" >四肖连</a>
                    <a href="javascript:void(0)" min-num="5" subCode="lhc_five_zodiac_link" >五肖连</a>
                </div>

                <input id="playCode2" type="hidden" value="${lhcTwoZodiacLink}">
                <input id="playCode3" type="hidden" value="${lhcThreeZodiacLink}">
                <input id="playCode4" type="hidden" value="${lhcFourZodiacLink}">
                <input id="playCode5" type="hidden" value="${lhcFiveZodiacLink}">

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
                        (请选择<font id="minNum" color="red">3</font>个及以上号码)
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
                <tr>
                    <td style="cursor: pointer;" class="hx-list" data-name="鼠">
                        <strong <c:if test="${fn:length(zodiacNum['鼠']) == 5}">style="margin-left:30px"</c:if>>鼠</strong>
                        <c:forEach var="item" items="${zodiacNum['鼠']}">
                            <span class="ball-icon ball-${item}"></span>
                        </c:forEach>
                    </td>
                    <td style="cursor: pointer;"><strong class="color-red pl"></strong></td>
                    <td style="cursor: pointer;" class="hx-list" data-name="牛">
                        <strong <c:if test="${fn:length(zodiacNum['牛']) == 5}">style="margin-left:30px"</c:if>>牛</strong>
                        <c:forEach var="item" items="${zodiacNum['牛']}">
                            <span class="ball-icon ball-${item}"></span>
                        </c:forEach>
                    </td>
                    <td style="cursor: pointer;"><strong class="color-red pl"></strong></td>
                </tr>
                <tr>
                    <td style="cursor: pointer;" class="hx-list" data-name="虎">
                        <strong <c:if test="${fn:length(zodiacNum['虎']) == 5}">style="margin-left:30px"</c:if>>虎</strong>
                        <c:forEach var="item" items="${zodiacNum['虎']}">
                            <span class="ball-icon ball-${item}"></span>
                        </c:forEach>
                    </td>
                    <td style="cursor: pointer;"><strong class="color-red pl"></strong></td>

                    <td style="cursor: pointer;" class="hx-list" data-name="兔">
                        <strong <c:if test="${fn:length(zodiacNum['兔']) == 5}">style="margin-left:30px"</c:if>>兔</strong>
                        <c:forEach var="item" items="${zodiacNum['兔']}">
                            <span class="ball-icon ball-${item}"></span>
                        </c:forEach>
                    </td>
                    <td style="cursor: pointer;"><strong class="color-red pl" data-name="龙"></strong></td>
                </tr>
                <tr>
                    <td style="cursor: pointer;" class="hx-list" data-name="龙">
                        <strong <c:if test="${fn:length(zodiacNum['龙']) == 5}">style="margin-left:30px"</c:if>>龙</strong>
                        <c:forEach var="item" items="${zodiacNum['龙']}">
                            <span class="ball-icon ball-${item}"></span>
                        </c:forEach>
                    </td>
                    <td style="cursor: pointer;"><strong class="color-red pl"></strong></td>

                    <td style="cursor: pointer;" class="hx-list" data-name="蛇">
                        <strong <c:if test="${fn:length(zodiacNum['蛇']) == 5}">style="margin-left:30px"</c:if>>蛇</strong>
                        <c:forEach var="item" items="${zodiacNum['蛇']}">
                            <span class="ball-icon ball-${item}"></span>
                        </c:forEach>
                    </td>
                    <td style="cursor: pointer;"><strong class="color-red pl"></strong></td>
                </tr>
                <tr>
                    <td style="cursor: pointer;" class="hx-list" data-name="马">
                        <strong <c:if test="${fn:length(zodiacNum['马']) == 5}">style="margin-left:30px"</c:if>>马</strong>
                        <c:forEach var="item" items="${zodiacNum['马']}">
                            <span class="ball-icon ball-${item}"></span>
                        </c:forEach>
                    </td>
                    <td style="cursor: pointer;"><strong class="color-red pl">12</strong></td>

                    <td style="cursor: pointer;" class="hx-list" data-name="羊">
                        <strong <c:if test="${fn:length(zodiacNum['羊']) == 5}">style="margin-left:30px"</c:if>>羊</strong>
                        <input type="checkbox">
                        <c:forEach var="item" items="${zodiacNum['羊']}">
                            <span class="ball-icon ball-${item}"></span>
                        </c:forEach>
                    </td>
                    <td style="cursor: pointer;"><strong class="color-red pl">12</strong></td>
                </tr>
                <tr>
                    <td style="cursor: pointer;" class="hx-list" data-name="猴">
                        <strong <c:if test="${fn:length(zodiacNum['猴']) == 5}">style="margin-left:30px"</c:if>>猴</strong>
                        <c:forEach var="item" items="${zodiacNum['猴']}">
                            <span class="ball-icon ball-${item}"></span>
                        </c:forEach>
                    </td>
                    <td style="cursor: pointer;"><strong class="color-red pl"></strong></td>

                    <td style="cursor: pointer;" class="hx-list" data-name="鸡">
                        <strong <c:if test="${fn:length(zodiacNum['鸡']) == 5}">style="margin-left:30px"</c:if>>鸡</strong>
                        <c:forEach var="item" items="${zodiacNum['鸡']}">
                            <span class="ball-icon ball-${item}"></span>
                        </c:forEach>
                    </td>
                    <td style="cursor: pointer;"><strong class="color-red pl"></strong></td>
                </tr>
                <tr>
                    <td style="cursor: pointer;" class="hx-list" data-name="狗">
                        <strong <c:if test="${fn:length(zodiacNum['狗']) == 5}">style="margin-left:30px"</c:if>>狗</strong>
                        <c:forEach var="item" items="${zodiacNum['狗']}">
                            <span class="ball-icon ball-${item}"></span>
                        </c:forEach>
                    </td>
                    <td style="cursor: pointer;"><strong class="color-red pl">12</strong></td>

                    <td style="cursor: pointer;" class="hx-list" data-name="猪">
                        <strong <c:if test="${fn:length(zodiacNum['猪']) == 5}">style="margin-left:30px"</c:if>>猪</strong>
                        <c:forEach var="item" items="${zodiacNum['猪']}">
                            <span class="ball-icon ball-${item}"></span>
                        </c:forEach>
                    </td>
                    <td style="cursor: pointer;"><strong class="color-red pl">12</strong></td>
                </tr>
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

    curl(['site/hall/lhc/hklhc/LinkZodiac'], function(PlayWay) {
        page.playWay = new PlayWay();
    });

</script>
