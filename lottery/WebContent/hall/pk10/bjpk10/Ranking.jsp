<%--@elvariable id="odds" type="Map<java.lang.String,so.wwb.gamebox.model.company.lottery.po.SiteLotteryOdd>"--%>
<%--@elvariable id="lottery" type="so.wwb.gamebox.model.company.lottery.po.SiteLotteryOdd"--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<%-- 排名（冠军 -> 第十名） --%>
<div class="lot-content clearfix">
    <c:choose>
        <c:when test="${ranking == 'champion'}">
            <c:set var="rankName" value="冠军"/>
        </c:when>
        <c:when test="${ranking == 'runner_up'}">
            <c:set var="rankName" value="亚军"/>
        </c:when>
        <c:when test="${ranking == 'third_runner'}">
            <c:set var="rankName" value="季军"/>
        </c:when>
        <c:when test="${ranking == 'fourth_place'}">
            <c:set var="rankName" value="第四名"/>
        </c:when>
        <c:when test="${ranking == 'fifth_place'}">
            <c:set var="rankName" value="第五名"/>
        </c:when>
        <c:when test="${ranking == 'sixth_place'}">
            <c:set var="rankName" value="第六名"/>
        </c:when>
        <c:when test="${ranking == 'seventh_place'}">
            <c:set var="rankName" value="第七名"/>
        </c:when>
        <c:when test="${ranking == 'eighth_place'}">
            <c:set var="rankName" value="第八名"/>
        </c:when>
        <c:when test="${ranking == 'ninth_place'}">
            <c:set var="rankName" value="第九名"/>
        </c:when>
        <c:otherwise>
            <c:set var="rankName" value="第十名"/>
        </c:otherwise>
    </c:choose>
    <div class="fl main-left">
        <div class="hd rehd clearfix">
                <%@ include file="../../common/ShortMoney.jsp" %>
        </div>
        <div class="table-common">
            <table width="100%" border="1">
                <thead>
                <tr>
                    <th width="64">号码</th>
                    <th width="42">赔率</th>
                    <th>金额</th>
                    <th width="64">号码</th>
                    <th width="42">赔率</th>
                    <th>金额</th>
                    <th width="64">号码</th>
                    <th width="42">赔率</th>
                    <th>金额</th>
                    <th width="64">号码</th>
                    <th width="42">赔率</th>
                    <th>金额</th>
                    <th width="64">号码</th>
                    <th width="42">赔率</th>
                    <th>金额</th>
                </tr>
                </thead>

                <tbody>
                <tr>
                <c:forEach var="i" begin="1" end="5">
                    <c:set var="number" value="0${i}"/>
                    <c:set var="lottery" value="${odds[number.toString()]}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" class="pointer"><img src="${resRoot}/themes/default/images/${i}.png"></td>
                    <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pk10Digital}" data-bet-num="${lottery.betNum}"  data-name="${rankName}-${lottery.betNum}"/></td>
                </c:forEach>
                </tr>

                <tr>
                <c:forEach var="i" begin="6" end="10">
                    <c:set var="number" value="0${i}"/>
                    <c:if test="${i==10}">
                        <c:set var="number" value="${i}"/>
                    </c:if>
                    <c:set var="lottery" value="${odds[number.toString()]}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" class="pointer"><img src="${resRoot}/themes/default/images/${i}.png"></td>
                    <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pk10Digital}" data-bet-num="${lottery.betNum}"  data-name="${rankName}-${lottery.betNum}"/></td>
                </c:forEach>
                </tr>
                </tbody>
            </table>
        </div>

        <div class="btns">
            <button type="submit" class="btn btn-1">提交</button>
            <button class="btn btn-2">重设</button>
        </div>
    </div>

    <%@ include file="../include/include.rank.jsp" %>
</div>
<script type="text/javascript">
    curl(['site/hall/pk10/PlayWay'], function(PlayWay) {
        page.playWay = new PlayWay();
    });
</script>
