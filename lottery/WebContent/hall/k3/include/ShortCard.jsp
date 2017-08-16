<%--@elvariable id="odds" type="Map<java.lang.String,so.wwb.gamebox.model.company.lottery.po.SiteLotteryOdd>"--%>
<%--@elvariable id="lottery" type="so.wwb.gamebox.model.company.lottery.po.SiteLotteryOdd"--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<div class="lot-content clearfix">
    <div class="fl main-left" style="width:auto; min-width: 760px; margin-left:75px;">
        <div class="hd clearfix">
            <div class="fl">
                快捷金额：
                <input type="text" class="txt">
            </div>
        </div>

        <div class="table-common clearfix">
            <table width="100%" border="1">
                <thead>
                <tr>
                    <th colspan="9">短牌</th>
                </tr>
                <tr>
                    <th>号码</th>
                    <th>赔率</th>
                    <th>金额</th>
                    <th>号码</th>
                    <th>赔率</th>
                    <th>金额</th>
                    <th>号码</th>
                    <th>赔率</th>
                    <th>金额</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="i" begin="1" end="6">
                    <c:if test="${i%3==1}">
                        <tr>
                    </c:if>
                    <c:set var="key" value="${i}${i}"/>
                    <c:set var="lottery" value="${odds[key]}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="短牌-${i}" style="cursor: pointer;">
                        <em class="gr gr-dice-${i} fs1"></em>
                        <em class="gr gr-dice-${i} fs1"></em>
                    </td>
                    <td data-num="短牌-${i}" style="cursor: pointer;"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="短牌-${i}"><input type="text" class="table-txt" data-bet-code="${lottery.betCode}" data-play="${shortCard}" data-bet-num="${lottery.betNum}" data-odds="${odd}" data-name="短牌-${i}"/></td>
                    <c:if test="${i%3==0}">
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
<!--彩种ｉd-->
<script type="text/javascript">
    curl(['site/hall/common/PlayWay'], function(PlayWay) {
        page.playWay = new PlayWay();
    });
</script>
