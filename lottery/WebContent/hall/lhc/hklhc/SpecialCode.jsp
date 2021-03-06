<%--@elvariable id="odds" type="Map<java.lang.String,so.wwb.gamebox.model.company.lottery.po.SiteLotteryOdd>"--%>
<%--@elvariable id="lottery" type="so.wwb.gamebox.model.company.lottery.po.SiteLotteryOdd"--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<c:set var="playGroupName" value="特码A"/>
<%-- 特码 --%>
<div class="lot-content clearfix">
    <div class="fl main-left">
        <div class="hd rehd clearfix">
            <%@ include file="../../common/ShortMoney.jsp" %>
            <div class="fr">
                <div class="T-tab clearfix" style="margin-top: 4.4px;">
                    <a href="javascript:void(0)" subCode="special_a" >特码A</a>
                    <a href="javascript:void(0)"  subCode="special_b" class="active">特码B</a>
                </div>
            </div>
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
                <tbody>
                <tr>
                    <c:set var="lottery" value="${odds['单']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;">单</td>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;"><strong class="color-red pl odds2">${odd}</strong></td>
                    <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${singleDoublePlay}" data-bet-num="${lottery.betNum}" data-name="特码A-单"/></td>

                    <c:set var="lottery" value="${odds['大']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;">大</td>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;"><strong class="color-red pl odds2">${odd}</strong></td>
                    <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${bigSmallPlay}" data-bet-num="${lottery.betNum}" data-name="特码A-大"/></td>

                    <c:set var="lottery" value="${odds['合单']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" data-num="${lottery.betNum}" style="cursor: pointer;">合单</td>
                    <td data-num="${lottery.betNum}" data-num="${lottery.betNum}" style="cursor: pointer;"><strong class="color-red pl odds2">${odd}</strong></td>
                    <td data-num="${lottery.betNum}" data-num="${lottery.betNum}"><input type="text" class="table-txt" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${sumSingleDoublePlay}" data-bet-num="${lottery.betNum}" data-name="特码A-合单"/></td>

                    <c:set var="lottery" value="${odds['合大']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;">合大</td>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;"><strong class="color-red pl odds2">${odd}</strong></td>
                    <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${specialSumBigSmallPlay}" data-bet-num="${lottery.betNum}" data-name="特码A-合大"/></td>

                    <c:set var="lottery" value="${odds['大单']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;">大单</td>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;"><strong class="color-red pl odds3">${odd}</strong></td>
                    <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${specialHalfPlay}" data-bet-num="${lottery.betNum}" data-name="特码A-大单"/></td>
                </tr>

                <tr>
                    <c:set var="lottery" value="${odds['双']}"/>
                    <c:set var="odd" value="${odds['双'].odd}"/>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;">双</td>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;"><strong class="color-red pl odds2">${odd}</strong></td>
                    <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${singleDoublePlay}" data-bet-num="${lottery.betNum}" data-name="特码A-双"/></td>

                    <c:set var="lottery" value="${odds['小']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;">小</td>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;"><strong class="color-red pl odds2">${odd}</strong></td>
                    <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${bigSmallPlay}" data-bet-num="${lottery.betNum}" data-name="特码A-小"/></td>

                    <c:set var="lottery" value="${odds['合双']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;">合双</td>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;"><strong class="color-red pl odds2">${odd}</strong></td>
                    <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${sumSingleDoublePlay}" data-bet-num="${lottery.betNum}" data-name="特码A-合双"/></td>

                    <c:set var="lottery" value="${odds['合小']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;">合小</td>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;"><strong class="color-red pl odds2">${odd}</strong></td>
                    <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${specialSumBigSmallPlay}" data-bet-num="${lottery.betNum}" data-name="特码A-合小"/></td>

                    <c:set var="lottery" value="${odds['大双']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;">大双</td>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;"><strong class="color-red pl odds3">${odd}</strong></td>
                    <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${specialHalfPlay}" data-bet-num="${lottery.betNum}" data-name="特码A-大双"/></td>
                </tr>
                <tr>
                    <c:set var="lottery" value="${odds['小单']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;">小单</td>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;"><strong class="color-red pl odds3">${odd}</strong></td>
                    <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${specialHalfPlay}" data-bet-num="${lottery.betNum}" data-name="特码A-小单"/></td>

                    <c:set var="lottery" value="${odds['小双']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;">小双</td>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;"><strong class="color-red pl odds3">${odd}</strong></td>
                    <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${specialHalfPlay}" data-bet-num="${lottery.betNum}" data-name="特码A-小双"/></td>

                    <c:set var="lottery" value="${odds['尾大']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;">尾大</td>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;"><strong class="color-red pl odds2">${odd}</strong></td>
                    <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${mantissaBigSmallPlay}" data-bet-num="${lottery.betNum}" data-name="特码A-尾大" /></td>

                    <c:set var="lottery" value="${odds['尾小']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;">尾小</td>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;"><strong class="color-red pl odds2">${odd}</strong></td>
                    <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${mantissaBigSmallPlay}" data-bet-num="${lottery.betNum}" data-name="特码A-尾小"/></td>

                    <c:set var="lottery" value="${odds['红波']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;">红波</td>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;"><strong class="color-red pl odds4">${odd}</strong></td>
                    <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${colourPlay}" data-bet-num="${lottery.betNum}" data-name="特码A-红波"/></td>
                </tr>
                <tr>
                    <c:set var="lottery" value="${odds['绿波']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;">绿波</td>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;"><strong class="color-red pl odds4">${odd}</strong></td>
                    <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${colourPlay}" data-bet-num="${lottery.betNum}" data-name="特码A-绿波"/></td>

                    <c:set var="lottery" value="${odds['蓝波']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;">蓝波</td>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;"><strong class="color-red pl odds4">${odd}</strong></td>
                    <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${colourPlay}" data-bet-num="${lottery.betNum}" data-name="特码A-蓝波"/></td>
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
    curl(['site/hall/lhc/hklhc/SpecialCode'], function(PlayWay) {
        page.playWay = new PlayWay();
    });
</script>
