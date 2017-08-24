<%--@elvariable id="odds" type="Map<java.lang.String,so.wwb.gamebox.model.company.lottery.po.SiteLotteryOdd>"--%>
<%--@elvariable id="lottery" type="so.wwb.gamebox.model.company.lottery.po.SiteLotteryOdd"--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<%-- 正码 --%>
<c:set var="playGroupName" value="正码"/>
<div class="lot-content clearfix">
    <div class="fl main-left">
        <div class="hd rehd clearfix">
                <%@ include file="../../common/ShortMoney.jsp" %>
        </div>

        <div class="table-common">
            <table width="100%" border="1">
                <thead>
                <tr>
                    <th width="47">号码</th>
                    <th width="56">赔率</th>
                    <th>金额</th>
                    <th width="47">号码</th>
                    <th width="56">赔率</th>
                    <th>金额</th>
                    <th width="47">号码</th>
                    <th width="56">赔率</th>
                    <th>金额</th>
                    <th width="47">号码</th>
                    <th width="56">赔率</th>
                    <th>金额</th>
                    <th width="47">号码</th>
                    <th width="56">赔率</th>
                    <th>金额</th>
                </tr>
                </thead>
                <%--下注数字--%>
                <%@include file="include/Digit.jsp"%>
                <thead>
                <tr>
                    <th colspan="15">总和</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <c:set var="lottery" value="${sumOdds['总大']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;">总大</td>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="正码-总大" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${sumBigSmallPlay}" data-bet-num="${lottery.betNum}"/></td>

                    <c:set var="lottery" value="${sumOdds['总小']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;">总小</td>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="正码-总小" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${sumBigSmallPlay}" data-bet-num="${lottery.betNum}"/></td>

                    <c:set var="lottery" value="${sumOdds['总单']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;">总单</td>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="正码-总单" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${sumSingleDoublePlay}" data-bet-num="${lottery.betNum}"/></td>

                    <c:set var="lottery" value="${sumOdds['总双']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;">总双</td>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="正码-总双" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${sumSingleDoublePlay}" data-bet-num="${lottery.betNum}"/></td>

                    <td style="cursor: pointer;">&nbsp;</td>
                    <td style="cursor: pointer;">&nbsp;</td>
                    <td style="cursor: pointer;">&nbsp;</td>
                </tr>
                </tbody>
            </table>
        </div>

        <div class="btns">
            <button type="submit" class="btn btn-1">提交</button>
            <button class="btn btn-2">重设</button>
        </div>
    </div>

    <%--快选投注--%>
    <%@include file="include/Right.jsp"%>
</div>
<script type="text/javascript">
    curl(['site/hall/lhc/hklhc/PlayWay'], function(PlayWay) {
        page.playWay = new PlayWay();
    });
</script>
