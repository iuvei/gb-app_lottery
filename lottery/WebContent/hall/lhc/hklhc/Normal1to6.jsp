<%--@elvariable id="odds" type="Map<java.lang.String,so.wwb.gamebox.model.company.lottery.po.SiteLotteryOdd>"--%>
<%--@elvariable id="lottery" type="so.wwb.gamebox.model.company.lottery.po.SiteLotteryOdd"--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<div class="lot-content clearfix">
    <div class="fl main-left" style="width:auto; min-width: 760px; margin-left:75px;">
        <div class="hd rehd clearfix">
                <%@ include file="../../common/ShortMoney.jsp" %>
        </div>

        <div class="table-common clearfix">
            <table border="1" class="item">
                <thead>
                <tr>
                    <th width="38"></th>
                </tr>
                <tr>
                    <th width="38">类型</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td style="cursor: pointer;">单</td>
                </tr>
                <tr>
                    <td style="cursor: pointer;">双</td>
                </tr>
                <tr>
                    <td style="cursor: pointer;">大</td>
                </tr>
                <tr>
                    <td style="cursor: pointer;">小</td>
                </tr>
                <tr>
                    <td class="redBg" style="cursor: pointer;">红波</td>
                </tr>
                <tr>
                    <td class="blueBg" style="cursor: pointer;">蓝波</td>
                </tr>
                <tr>
                    <td class="greenBg" style="cursor: pointer;">绿波</td>
                </tr>
                <tr>
                    <td style="cursor: pointer;">合大</td>
                </tr>
                <tr>
                    <td style="cursor: pointer;">合小</td>
                </tr>
                <tr>
                    <td style="cursor: pointer;">合单</td>
                </tr>
                <tr>
                    <td style="cursor: pointer;">合双</td>
                </tr>
                <tr>
                    <td style="cursor: pointer;">尾大</td>
                </tr>
                <tr>
                    <td style="cursor: pointer;">尾小</td>
                </tr>
                </tbody>
            </table>
            <c:forEach var="i" begin="1" end="6">
                <c:set var="odds" value="${oddList.get(i-1)}"/>
                <c:choose>
                    <c:when test="${i==1}">
                        <c:set var="playGroupName" value="正码一"/>
                    </c:when>
                    <c:when test="${i==2}">
                        <c:set var="playGroupName" value="正码二"/>
                    </c:when>
                    <c:when test="${i==3}">
                        <c:set var="playGroupName" value="正码三"/>
                    </c:when>
                    <c:when test="${i==4}">
                        <c:set var="playGroupName" value="正码四"/>
                    </c:when>
                    <c:when test="${i==5}">
                        <c:set var="playGroupName" value="正码五"/>
                    </c:when>
                    <c:otherwise>
                        <c:set var="playGroupName" value="正码六"/>
                    </c:otherwise>
                </c:choose>
                <table border="1" class="item">
                    <thead>
                    <tr>
                        <th colspan="2" width="">${playGroupName}</th>
                    </tr>
                    <tr>
                        <th width="48">赔率</th>
                        <th width="64">金额</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <c:set var="lottery" value="${odds['单']}"/>
                        <c:set var="odd" value="${lottery.odd}"/>
                        <td data-num="${lottery.betNum}${i}" style="cursor: pointer;"><strong class="color-red pl">${odd}</strong></td>
                        <td data-num="${lottery.betNum}${i}"><input type="text" class="table-txt" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${singleDoublePlay}" data-bet-num="${lottery.betNum}" data-name="${playGroupName}-单"/></td>
                    </tr>
                    <tr>
                        <c:set var="lottery" value="${odds['双']}"/>
                        <c:set var="odd" value="${lottery.odd}"/>

                        <td data-num="${lottery.betNum}${i}" style="cursor: pointer;"><strong class="color-red pl">${odd}</strong></td>
                        <td data-num="${lottery.betNum}${i}"><input type="text" class="table-txt" data-name="${playGroupName}-双" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${singleDoublePlay}" data-bet-num="${lottery.betNum}"/></td>
                    </tr>
                    <tr>
                        <c:set var="lottery" value="${odds['大']}"/>
                        <c:set var="odd" value="${lottery.odd}"/>
                        <td data-num="${lottery.betNum}${i}" style="cursor: pointer;"><strong class="color-red pl">${odd}</strong></td>
                        <td data-num="${lottery.betNum}${i}"><input type="text" class="table-txt" data-name="${playGroupName}-大" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${bigSmallPlay}" data-bet-num="${lottery.betNum}"/></td>
                    </tr>
                    <tr>
                        <c:set var="lottery" value="${odds['小']}"/>
                        <c:set var="odd" value="${lottery.odd}"/>
                        <td data-num="${lottery.betNum}${i}" style="cursor: pointer;"><strong class="color-red pl">${odd}</strong></td>
                        <td data-num="${lottery.betNum}${i}"><input type="text" class="table-txt" data-name="${playGroupName}-小" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${bigSmallPlay}" data-bet-num="${lottery.betNum}"/></td>
                    </tr>
                    <tr>
                        <c:set var="lottery" value="${odds['红波']}"/>
                        <c:set var="odd" value="${lottery.odd}"/>
                        <td data-num="${lottery.betNum}${i}" style="cursor: pointer;"><strong class="color-red pl">${odd}</strong></td>
                        <td data-num="${lottery.betNum}${i}"><input type="text" class="table-txt" data-name="${playGroupName}-红波" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${colourPlay}" data-bet-num="${lottery.betNum}"/></td>
                    </tr>
                    <tr>
                        <c:set var="lottery" value="${odds['蓝波']}"/>
                        <c:set var="odd" value="${lottery.odd}"/>
                        <td data-num="${lottery.betNum}${i}" style="cursor: pointer;"><strong class="color-red pl">${odd}</strong></td>
                        <td data-num="${lottery.betNum}${i}"><input type="text" class="table-txt" data-name="${playGroupName}-蓝波" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${colourPlay}" data-bet-num="${lottery.betNum}"/></td>
                    </tr>
                    <tr>
                        <c:set var="lottery" value="${odds['绿波']}"/>
                        <c:set var="odd" value="${lottery.odd}"/>
                        <td data-num="${lottery.betNum}${i}" style="cursor: pointer;"><strong class="color-red pl">${odd}</strong></td>
                        <td data-num="${lottery.betNum}${i}"><input type="text" class="table-txt" data-name="${playGroupName}-绿波" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${colourPlay}" data-bet-num="${lottery.betNum}"/></td>
                    </tr>
                    <tr>
                        <c:set var="lottery" value="${odds['合大']}"/>
                        <c:set var="odd" value="${lottery.odd}"/>
                        <td data-num="${lottery.betNum}${i}" style="cursor: pointer;"><strong class="color-red pl">${odd}</strong></td>
                        <td data-num="${lottery.betNum}${i}"><input type="text" class="table-txt" data-name="${playGroupName}-合大" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${sumBigSmallPlay}" data-bet-num="${lottery.betNum}"/></td>
                    </tr>
                    <tr>
                        <c:set var="lottery" value="${odds['合小']}"/>
                        <c:set var="odd" value="${lottery.odd}"/>
                        <td data-num="${lottery.betNum}${i}" style="cursor: pointer;"><strong class="color-red pl">${odd}</strong></td>
                        <td data-num="${lottery.betNum}${i}"><input type="text" class="table-txt" data-name="${playGroupName}-合小" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${sumBigSmallPlay}" data-bet-num="${lottery.betNum}"/></td>
                    </tr>
                    <tr>
                        <c:set var="lottery" value="${odds['合单']}"/>
                        <c:set var="odd" value="${lottery.odd}"/>
                        <td data-num="${lottery.betNum}${i}" style="cursor: pointer;"><strong class="color-red pl">${odd}</strong></td>
                        <td data-num="${lottery.betNum}${i}"><input type="text" class="table-txt" data-name="${playGroupName}-合单" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${sumSingleDoublePlay}" data-bet-num="${lottery.betNum}"/></td>
                    </tr>
                    <tr>
                        <c:set var="lottery" value="${odds['合双']}"/>
                        <c:set var="odd" value="${lottery.odd}"/>
                        <td data-num="${lottery.betNum}${i}" style="cursor: pointer;"><strong class="color-red pl">${odd}</strong></td>
                        <td data-num="${lottery.betNum}${i}"><input type="text" class="table-txt" data-name="${playGroupName}-合双" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${sumSingleDoublePlay}" data-bet-num="${lottery.betNum}"/></td>
                    </tr>
                    <tr>
                        <c:set var="lottery" value="${odds['尾大']}"/>
                        <c:set var="odd" value="${lottery.odd}"/>
                        <td data-num="${lottery.betNum}${i}" style="cursor: pointer;"><strong class="color-red pl">${odd}</strong></td>
                        <td data-num="${lottery.betNum}${i}"><input type="text" class="table-txt" data-name="${playGroupName}-尾大" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${mantissaBigSmall}" data-bet-num="${lottery.betNum}"/></td>
                    </tr>
                    <tr>
                        <c:set var="lottery" value="${odds['尾小']}"/>
                        <c:set var="odd" value="${lottery.odd}"/>
                        <td data-num="${lottery.betNum}${i}" style="cursor: pointer;"><strong class="color-red pl">${odd}</strong></td>
                        <td data-num="${lottery.betNum}${i}"><input type="text" class="table-txt" data-name="${playGroupName}-尾小" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${mantissaBigSmall}" data-bet-num="${lottery.betNum}"/></td>
                    </tr>
                    </tbody>
                </table>
            </c:forEach>
        </div>
        <div class="btns">
            <button type="submit" class="btn btn-1">提交</button>
            <button class="btn btn-2">重设</button>
        </div>
    </div>
</div>
<script type="text/javascript">
    curl(['site/hall/lhc/hklhc/PlayWay'], function(PlayWay) {
        page.playWay = new PlayWay();
    });
</script>
