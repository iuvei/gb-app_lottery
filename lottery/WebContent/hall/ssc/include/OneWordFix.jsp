<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<%--@elvariable id="odds" type="Map<java.lang.String,so.wwb.gamebox.model.company.lottery.po.SiteLotteryOdd>"--%>
<%--@elvariable id="lottery" type="so.wwb.gamebox.model.company.lottery.po.SiteLotteryOdd"--%>
<c:set var="betCode" value="one" />
<%-- 一字定位 --%>
<div class="lot-content clearfix">
    <div class="fl main-left">
        <div class="hd rehd clearfix">
                <%@ include file="../../common/ShortMoney.jsp" %>
            <div class="fr">
                <div class="T-tab fix-type clearfix" style="margin-top: 5px; ">
                    <a href="javascript:void(0)" data-code="ten_thousand" class="active">万位</a>
                    <a href="javascript:void(0)" data-code="thousand">千位</a>
                    <a href="javascript:void(0)" data-code="hundred">百位</a>
                    <a href="javascript:void(0)" data-code="ten">十位</a>
                    <a href="javascript:void(0)" data-code="one">个位</a>
                </div>
            </div>
        </div>

        <div class="table-common">
            <table width="100%" border="1" class="num">
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
                </tr>
                </thead>
                <tbody>
                <tr>
                    <c:set var="lottery" value="${odds['0']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" class="pointer"><strong>0</strong></td>
                    <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl num0">${odd}</strong></td>
                    <td data-num="${lottery.betNum}"><input type="text" class="table-txt num0" data-name="万位-0" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${oneDigital}" data-bet-num="0"/></td>

                    <c:set var="lottery" value="${odds['1']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" class="pointer"><strong>1</strong></td>
                    <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl num1">${odd}</strong></td>
                    <td data-num="${lottery.betNum}"><input type="text" class="table-txt num1" data-name="万位-1" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${oneDigital}" data-bet-num="1"/></td>

                    <c:set var="lottery" value="${odds['2']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" class="pointer"><strong>2</strong></td>
                    <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl num2">${odd}</strong></td>
                    <td data-num="${lottery.betNum}"><input type="text" class="table-txt num2" data-name="万位-2" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${oneDigital}" data-bet-num="2"/></td>

                    <c:set var="lottery" value="${odds['3']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" class="pointer"><strong>3</strong></td>
                    <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl num3">${odd}</strong></td>
                    <td data-num="${lottery.betNum}"><input type="text" class="table-txt num3" data-name="万位-3" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${oneDigital}" data-bet-num="3"/></td>
                </tr>
                <tr>
                    <c:set var="lottery" value="${odds['4']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" class="pointer"><strong>4</strong></td>
                    <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl num4">${odd}</strong></td>
                    <td data-num="${lottery.betNum}"><input type="text" class="table-txt num4" data-name="万位-4" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${oneDigital}" data-bet-num="4"/></td>

                    <c:set var="lottery" value="${odds['5']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" class="pointer"><strong>5</strong></td>
                    <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl num5">${odd}</strong></td>
                    <td data-num="${lottery.betNum}"><input type="text" class="table-txt num5" data-name="万位-5" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${oneDigital}" data-bet-num="5"/></td>

                    <c:set var="lottery" value="${odds['6']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" class="pointer"><strong>6</strong></td>
                    <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl num6">${odd}</strong></td>
                    <td data-num="${lottery.betNum}"><input type="text" class="table-txt num6" data-name="万位-6" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${oneDigital}" data-bet-num="6"/></td>

                    <c:set var="lottery" value="${odds['7']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" class="pointer"><strong>7</strong></td>
                    <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl num7">${odd}</strong></td>
                    <td data-num="${lottery.betNum}"><input type="text" class="table-txt num7" data-name="万位-7" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${oneDigital}" data-bet-num="7"/></td>
                </tr>
                <tr>
                    <c:set var="lottery" value="${odds['8']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" class="pointer"><strong>8</strong></td>
                    <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl num8">${odd}</strong></td>
                    <td data-num="${lottery.betNum}"><input type="text" class="table-txt num8" data-name="万位-8" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${oneDigital}" data-bet-num="8"/></td>

                    <c:set var="lottery" value="${odds['9']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" class="pointer"><strong>9</strong></td>
                    <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl num9">${odd}</strong></td>
                    <td data-num="${lottery.betNum}"><input type="text" class="table-txt num9" data-name="万位-9" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${oneDigital}" data-bet-num="9"/></td>

                    <c:set var="lottery" value="${odds['大']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" class="pointer"><strong>大</strong></td>
                    <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="${lottery.betNum}"><input type="text" class="table-txt large" data-name="万位-大" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${oneBigSmall}" data-bet-num="大"/></td>

                    <c:set var="lottery" value="${odds['小']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" class="pointer"><strong>小</strong></td>
                    <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="${lottery.betNum}"><input type="text" class="table-txt little" data-name="万位-小" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${oneBigSmall}" data-bet-num="小"/></td>
                </tr>
                <tr>
                    <c:set var="lottery" value="${odds['单']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" class="pointer"><strong>单</strong></td>
                    <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="${lottery.betNum}"><input type="text" class="table-txt single" data-name="万位-单" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${oneSingleDouble}" data-bet-num="单"/></td>

                    <c:set var="lottery" value="${odds['双']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" class="pointer"><strong>双</strong></td>
                    <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="${lottery.betNum}"><input type="text" class="table-txt twin" data-name="万位-双" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${oneSingleDouble}" data-bet-num="双"/></td>

                    <c:set var="lottery" value="${odds['质']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" class="pointer"><strong>质</strong></td>
                    <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="${lottery.betNum}"><input type="text" class="table-txt prime" data-name="万位-质" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${onePrimeCombined}" data-bet-num="质"/></td>

                    <c:set var="lottery" value="${odds['合']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" class="pointer"><strong>合</strong></td>
                    <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="${lottery.betNum}"><input type="text" class="table-txt composite" data-name="万位-合" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${onePrimeCombined}" data-bet-num="合"/></td>
                </tr>
                </tbody>
            </table>

            <table width="100%" border="1" class="total-sum">
                <thead>
                <tr>
                    <th colspan="15">总和、龙虎和</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <c:set var="lottery" value="${fiveSumOdd['总大']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" class="pointer"><strong>总大</strong></td>
                    <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="总和、龙虎和-总大" data-bet-code="${lottery.betCode}" data-play="${fiveSumBigSmall}" data-bet-num="总大" data-odds="${odd}"/></td>

                    <c:set var="lottery" value="${fiveSumOdd['总单']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" class="pointer"><strong>总单</strong></td>
                    <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="总和、龙虎和-总单" data-bet-code="${lottery.betCode}" data-play="${fiveSumSingleDouble}" data-bet-num="总单" data-odds="${odd}"/></td>

                    <c:set var="lottery" value="${dragonTigerTieOdd['龙']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" class="pointer"><strong>龙</strong></td>
                    <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="总和、龙虎和-龙" data-bet-code="${lottery.betCode}" data-play="${dragonTigerTie}" data-bet-num="龙" data-odds="${odd}"/></td>

                    <c:set var="lottery" value="${dragonTigerTieOdd['和']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" class="pointer"><strong>和</strong></td>
                    <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="总和、龙虎和-和" data-bet-code="${lottery.betCode}" data-play="${dragonTigerTie}" data-bet-num="和" data-odds="${odd}"/></td>
                </tr>
                <tr>
                    <c:set var="lottery" value="${fiveSumOdd['总小']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" class="pointer"><strong>总小</strong></td>
                    <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="总和、龙虎和-总小" data-bet-code="${lottery.betCode}" data-play="${fiveSumBigSmall}" data-bet-num="总小" data-odds="${odd}"/></td>

                    <c:set var="lottery" value="${fiveSumOdd['总双']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" class="pointer"><strong>总双</strong></td>
                    <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="总和、龙虎和-总双" data-bet-code="${lottery.betCode}" data-play="${fiveSumSingleDouble}" data-bet-num="总双" data-odds="${odd}"/></td>

                    <c:set var="lottery" value="${dragonTigerTieOdd['虎']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" class="pointer"><strong>虎</strong></td>
                    <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="总和、龙虎和-虎" data-bet-code="${lottery.betCode}" data-play="${dragonTigerTie}" data-bet-num="虎" data-odds="${odd}"/></td>

                    <td class="pointer" colspan="3">&nbsp;</td>
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
<script type="text/javascript">
    curl(['site/hall/ssc/OneWordFix'], function(PlayWay) {
        page.playWay = new PlayWay();
    });
</script>