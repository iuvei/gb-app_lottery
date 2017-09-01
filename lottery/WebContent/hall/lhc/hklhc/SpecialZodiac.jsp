<%--@elvariable id="odds" type="Map<java.lang.String,so.wwb.gamebox.model.company.lottery.po.SiteLotteryOdd>"--%>
<%--@elvariable id="lottery" type="so.wwb.gamebox.model.company.lottery.po.SiteLotteryOdd"--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<div class="lot-content clearfix">
    <div class="fl main-left">
        <div class="hd rehd clearfix" id="toptouzhu">
                <%@ include file="../../common/ShortMoney.jsp" %>
        </div>

        <div class="table-common">
            <table width="100%" border="1">
                <thead>
                <tr>
                    <th width="53">号码</th>
                    <th width="62">赔率</th>
                    <th width="67">金额</th>
                    <th>号码</th>
                    <th width="53">号码</th>
                    <th width="62">赔率</th>
                    <th width="67">金额</th>
                    <th>号码</th>
                </tr>
                </thead>

                <tbody>
                <tr>
                    <c:set var="lottery" value="${odds['鼠']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;">${lottery.betNum}</td>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="${lottery.betNum}">
                        <input type="text" class="table-txt" data-name="${lottery.betNum}" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${lhcSpecialZodiac}" data-bet-num="${lottery.betNum}"/>
                    </td>
                    <td style="cursor: pointer;">
                        <c:forEach items="${zodiacNum['鼠']}" var="num" varStatus="status">
                            <span class="ball-icon ball-${num}"></span>
                        </c:forEach>
                    </td>
                    <c:set var="lottery" value="${odds['牛']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;">${lottery.betNum}</td>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="${lottery.betNum}">
                        <input type="text" class="table-txt" data-name="${lottery.betNum}" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${lhcSpecialZodiac}" data-bet-num="${lottery.betNum}"/>
                    </td>
                    <td style="cursor: pointer;">
                        <c:forEach items="${zodiacNum['牛']}" var="num" varStatus="status">
                            <span class="ball-icon ball-${num}"></span>
                        </c:forEach>
                    </td>
                </tr>
                <tr>
                    <c:set var="lottery" value="${odds['虎']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;">${lottery.betNum}</td>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="${lottery.betNum}">
                        <input type="text" class="table-txt" data-name="${lottery.betNum}" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${lhcSpecialZodiac}" data-bet-num="${lottery.betNum}"/></td>
                    <td style="cursor: pointer;">
                        <c:forEach items="${zodiacNum['虎']}" var="num" varStatus="status">
                            <span class="ball-icon ball-${num}"></span>
                        </c:forEach>
                    </td>
                    <c:set var="lottery" value="${odds['兔']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;">${lottery.betNum}</td>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;"><strong class="color-red pl">${odd}</strong>
                    </td>
                    <td data-num="${lottery.betNum}">
                        <input type="text" class="table-txt" data-name="${lottery.betNum}" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${lhcSpecialZodiac}" data-bet-num="${lottery.betNum}"/>
                    </td>
                    <td style="cursor: pointer;">
                        <c:forEach items="${zodiacNum['兔']}" var="num" varStatus="status">
                            <span class="ball-icon ball-${num}"></span>
                        </c:forEach>
                    </td>
                </tr>
                <tr>
                    <c:set var="lottery" value="${odds['龙']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;">${lottery.betNum}</td>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;"><strong class="color-red pl">${odd}</strong>
                    </td>
                    <td data-num="${lottery.betNum}">
                        <input type="text" class="table-txt" data-name="${lottery.betNum}" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${lhcSpecialZodiac}" data-bet-num="${lottery.betNum}"/>
                    </td>
                    <td style="cursor: pointer;">
                        <c:forEach items="${zodiacNum['龙']}" var="num" varStatus="status">
                            <span class="ball-icon ball-${num}"></span>
                        </c:forEach>
                    </td>
                    <c:set var="lottery" value="${odds['蛇']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;">${lottery.betNum}</td>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;">
                        <strong class="color-red pl">${odd}</strong>
                    </td>
                    <td data-num="${lottery.betNum}">
                        <input type="text" class="table-txt" data-name="${lottery.betNum}" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${lhcSpecialZodiac}" data-bet-num="${lottery.betNum}"/>
                    </td>
                    <td style="cursor: pointer;">
                        <c:forEach items="${zodiacNum['蛇']}" var="num" varStatus="status">
                            <span class="ball-icon ball-${num}"></span>
                        </c:forEach>
                    </td>
                </tr>
                <tr>
                    <c:set var="lottery" value="${odds['马']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;">${lottery.betNum}</td>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="${lottery.betNum}">
                        <input type="text" class="table-txt" data-name="${lottery.betNum}" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${lhcSpecialZodiac}" data-bet-num="${lottery.betNum}"/>
                    </td>
                    <td style="cursor: pointer;">
                        <c:forEach items="${zodiacNum['马']}" var="num" varStatus="status">
                            <span class="ball-icon ball-${num}"></span>
                        </c:forEach>
                    </td>
                    <c:set var="lottery" value="${odds['羊']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;">${lottery.betNum}</td>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="${lottery.betNum}">
                        <input type="text" class="table-txt" data-name="${lottery.betNum}" data-odds="${odd}" data-bet-code="${lottery.betCode}"data-play="${lhcSpecialZodiac}"data-bet-num="${lottery.betNum}"/>
                    </td>
                    <td style="cursor: pointer;">
                        <c:forEach items="${zodiacNum['羊']}" var="num" varStatus="status">
                            <span class="ball-icon ball-${num}"></span>
                        </c:forEach>
                    </td>
                </tr>
                <tr>
                    <c:set var="lottery" value="${odds['猴']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;">${lottery.betNum}</td>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;"><strong class="color-red pl">${odd}</strong>
                    </td>
                    <td data-num="${lottery.betNum}">
                        <input type="text" class="table-txt" data-name="${lottery.betNum}" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${lhcSpecialZodiac}" data-bet-num="${lottery.betNum}"/>
                    </td>
                    <td style="cursor: pointer;">
                        <c:forEach items="${zodiacNum['猴']}" var="num" varStatus="status">
                            <span class="ball-icon ball-${num}"></span>
                        </c:forEach>
                    </td>
                    <c:set var="lottery" value="${odds['鸡']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;">${lottery.betNum}</td>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;"><strong class="color-red pl">${odd}</strong>
                    </td>
                    <td data-num="${lottery.betNum}">
                        <input type="text" class="table-txt" data-name="${lottery.betNum}" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${lhcSpecialZodiac}" data-bet-num="${lottery.betNum}"/>
                    </td>
                    <td style="cursor: pointer;">
                        <c:forEach items="${zodiacNum['鸡']}" var="num" varStatus="status">
                            <span class="ball-icon ball-${num}"></span>
                        </c:forEach>
                    </td>
                </tr>
                <tr>
                    <c:set var="lottery" value="${odds['狗']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;">${lottery.betNum}</td>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;"><strong class="color-red pl">${odd}</strong>
                    </td>
                    <td data-num="${lottery.betNum}">
                        <input type="text" class="table-txt" data-name="${lottery.betNum}" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${lhcSpecialZodiac}" data-bet-num="${lottery.betNum}"/>
                    </td>
                    <td style="cursor: pointer;">
                        <c:forEach items="${zodiacNum['狗']}" var="num" varStatus="status">
                            <span class="ball-icon ball-${num}"></span>
                        </c:forEach>
                    </td>
                    <c:set var="lottery" value="${odds['猪']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;">${lottery.betNum}</td>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;"><strong class="color-red pl" >${odd}</strong></td>
                    <td data-num="${lottery.betNum}">
                        <input type="text" class="table-txt" data-name="${lottery.betNum}" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${lhcSpecialZodiac}" data-bet-num="${lottery.betNum}"/>
                    </td>
                    <td style="cursor: pointer;">
                        <c:forEach items="${zodiacNum['猪']}" var="num" varStatus="status">
                            <span class="ball-icon ball-${num}"></span>
                        </c:forEach>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>

        <div class="btns">
            <button type="submit" class="btn btn-1">提交</button>
            <button class="btn btn-2">重设</button>
        </div>
    </div>

    <div class="fr main-right cl-10">
    </div>
</div>
<script type="text/javascript">
    curl(['site/hall/lhc/hklhc/PlayWay'], function(PlayWay) {
        page.playWay = new PlayWay();
    });
</script>