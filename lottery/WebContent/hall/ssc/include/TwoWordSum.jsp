<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<%-- 二字和数 --%>
<%--@elvariable id="odds" type="Map<java.lang.String,so.wwb.gamebox.model.company.lottery.po.SiteLotteryOdd>"--%>
<%--@elvariable id="lottery" type="so.wwb.gamebox.model.company.lottery.po.SiteLotteryOdd"--%>
<div class="lot-content clearfix">
    <div class="fl main-left">
        <div class="hd clearfix">
            <div class="fl">快捷金额：<input type="text" class="txt"></div>
        </div>

        <div class="table-common">
            <table width="100%" border="1">
                <thead>
                <tr>
                    <th width="33">&nbsp;</th>
                    <th colspan="2">万千和数</th>
                    <th colspan="2">万百和数</th>
                    <th colspan="2">万十和数</th>
                    <th colspan="2">万个和数</th>
                    <th colspan="2">千百和数</th>
                </tr>
                <tr>
                    <th>号码</th>
                    <td>赔率</td>
                    <td>金额</td>
                    <td>赔率</td>
                    <td>金额</td>
                    <td>赔率</td>
                    <td>金额</td>
                    <td>赔率</td>
                    <td>金额</td>
                    <td>赔率</td>
                    <td>金额</td>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <%--<c:forEach items="${oddList}" var="oddList" />--%>
                    <c:set var="odds" value="${oddList.get(0)}"/>
                    <c:set var="lottery" value="${odds['单']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" class="pointer"><strong>单</strong></td>
                    <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="万千和数-单" data-bet-code="${lottery.betCode}" data-play="${oneDigital}" data-bet-num="单" data-odds="${odd}"/></td>

                    <c:set var="odds" value="${oddList.get(1)}"/>
                    <c:set var="lottery" value="${odds['单']}"/>
                    <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="万百和数-单" data-bet-code="${lottery.betCode}" data-play="${oneDigital}" data-bet-num="单" data-odds="${odd}"/></td>

                    <c:set var="odds" value="${oddList.get(2)}"/>
                    <c:set var="lottery" value="${odds['单']}"/>
                    <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="万十和数-单" data-bet-code="${lottery.betCode}" data-play="${oneDigital}" data-bet-num="单" data-odds="${odd}"/></td>

                    <c:set var="odds" value="${oddList.get(3)}"/>
                    <c:set var="lottery" value="${odds['单']}"/>
                    <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="万个和数-单" data-bet-code="${lottery.betCode}" data-play="${oneDigital}" data-bet-num="单" data-odds="${odd}"/></td>

                    <c:set var="odds" value="${oddList.get(4)}"/>
                    <c:set var="lottery" value="${odds['单']}"/>
                    <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="千百和数-单" data-bet-code="${lottery.betCode}" data-play="${oneDigital}" data-bet-num="单" data-odds="${odd}"/></td>

                </tr>
                <tr>
                    <c:set var="odds" value="${oddList.get(0)}"/>
                    <c:set var="lottery" value="${odds['双']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" class="pointer"><strong>双</strong></td>
                    <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="万千和数-双" data-bet-code="${lottery.betCode}" data-play="${oneDigital}" data-bet-num="双" data-odds="${odd}"/></td>

                    <c:set var="odds" value="${oddList.get(1)}"/>
                    <c:set var="lottery" value="${odds['双']}"/>
                    <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="万百和数-双" data-bet-code="${lottery.betCode}" data-play="${oneDigital}" data-bet-num="双" data-odds="${odd}"/></td>

                    <c:set var="odds" value="${oddList.get(2)}"/>
                    <c:set var="lottery" value="${odds['双']}"/>
                    <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="万十和数-双" data-bet-code="${lottery.betCode}" data-play="${oneDigital}" data-bet-num="双" data-odds="${odd}"/></td>

                    <c:set var="odds" value="${oddList.get(3)}"/>
                    <c:set var="lottery" value="${odds['双']}"/>
                    <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="万个和数-双" data-bet-code="${lottery.betCode}" data-play="${oneDigital}" data-bet-num="双" data-odds="${odd}"/></td>

                    <c:set var="odds" value="${oddList.get(4)}"/>
                    <c:set var="lottery" value="${odds['双']}"/>
                    <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="千百和数-双" data-bet-code="${lottery.betCode}" data-play="${oneDigital}" data-bet-num="双" data-odds="${odd}"/></td>
                </tr>
                </tbody>
            </table>

            <table width="100%" border="1">
                <thead>
                <tr>
                    <th width="33">&nbsp;</th>
                    <th colspan="2">千十和数</th>
                    <th colspan="2">千个和数</th>
                    <th colspan="2">百十和数</th>
                    <th colspan="2">百个和数</th>
                    <th colspan="2">十个和数</th>
                </tr>
                <tr>
                    <td>号码</td>
                    <td>赔率</td>
                    <td>金额</td>
                    <td>赔率</td>
                    <td>金额</td>
                    <td>赔率</td>
                    <td>金额</td>
                    <td>赔率</td>
                    <td>金额</td>
                    <td>赔率</td>
                    <td>金额</td>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <c:set var="odds" value="${oddList.get(5)}"/>
                    <c:set var="lottery" value="${odds['单']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" class="pointer"><strong>单</strong></td>
                    <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="千十和数-单" data-bet-code="${lottery.betCode}" data-play="${oneDigital}" data-bet-num="单" data-odds="${odd}"/></td>

                    <c:set var="odds" value="${oddList.get(6)}"/>
                    <c:set var="lottery" value="${odds['单']}"/>
                    <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="千个和数-单" data-bet-code="${lottery.betCode}" data-play="${oneDigital}" data-bet-num="单" data-odds="${odd}"/></td>

                    <c:set var="odds" value="${oddList.get(7)}"/>
                    <c:set var="lottery" value="${odds['单']}"/>
                    <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="百十和数-单" data-bet-code="${lottery.betCode}" data-play="${oneDigital}" data-bet-num="单" data-odds="${odd}"/></td>

                    <c:set var="odds" value="${oddList.get(8)}"/>
                    <c:set var="lottery" value="${odds['单']}"/>
                    <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="百个和数-单" data-bet-code="${lottery.betCode}" data-play="${oneDigital}" data-bet-num="单" data-odds="${odd}"/></td>

                    <c:set var="odds" value="${oddList.get(9)}"/>
                    <c:set var="lottery" value="${odds['单']}"/>
                    <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="十个和数-单" data-bet-code="${lottery.betCode}" data-play="${oneDigital}" data-bet-num="单" data-odds="${odd}"/></td>
                </tr>
                <tr>
                    <c:set var="odds" value="${oddList.get(5)}"/>
                    <c:set var="lottery" value="${odds['双']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" class="pointer"><strong>双</strong></td>
                    <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="千十和数-双" data-bet-code="${lottery.betCode}" data-play="${oneDigital}" data-bet-num="双" data-odds="${odd}"/></td>

                    <c:set var="odds" value="${oddList.get(6)}"/>
                    <c:set var="lottery" value="${odds['双']}"/>
                    <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="千个和数-双" data-bet-code="${lottery.betCode}" data-play="${oneDigital}" data-bet-num="双" data-odds="${odd}"/></td>

                    <c:set var="odds" value="${oddList.get(7)}"/>
                    <c:set var="lottery" value="${odds['双']}"/>
                    <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="百十和数-双" data-bet-code="${lottery.betCode}" data-play="${oneDigital}" data-bet-num="双" data-odds="${odd}"/></td>

                    <c:set var="odds" value="${oddList.get(8)}"/>
                    <c:set var="lottery" value="${odds['双']}"/>
                    <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="百个和数-双" data-bet-code="${lottery.betCode}" data-play="${oneDigital}" data-bet-num="双" data-odds="${odd}"/></td>

                    <c:set var="odds" value="${oddList.get(9)}"/>
                    <c:set var="lottery" value="${odds['双']}"/>
                    <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="十个和数-双" data-bet-code="${lottery.betCode}" data-play="${oneDigital}" data-bet-num="双" data-odds="${odd}"/></td>

                </tr>
                </tbody>
            </table>
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

<input type="hidden" id="playId" value="338" />
<script src="${resRoot}/js/hall/ssc/cqssc/PlayWay.js?v=${rcVersion}"></script>
<script src="${resRoot}/js/hall/ssc/RenderRanking.js?v=${rcVersion}"/>
