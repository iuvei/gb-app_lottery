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
                    <th colspan="15">双面</th>
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
                    <th>号码</th>
                    <th>赔率</th>
                    <th>金额</th>
                </tr>
                </thead>

                <tbody>
                <tr>
                    <c:set var="lottery" value="${odds['大']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="双面-大" style="cursor: pointer;"><strong>大</strong></td>
                    <td data-num="双面-大" style="cursor: pointer;"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="双面-大"><input type="text" class="table-txt" data-bet-code="${lottery.betCode}" data-play="${pointsBigSmall}" data-bet-num="${lottery.betNum}" data-odds="${odd}" data-name="双面-大"/></td>

                    <c:set var="lottery" value="${odds['小']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="双面-小" style="cursor: pointer;"><strong>小</strong></td>
                    <td data-num="双面-小" style="cursor: pointer;"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="双面-小"><input type="text" class="table-txt" data-bet-code="${lottery.betCode}" data-play="${pointsBigSmall}" data-bet-num="${lottery.betNum}" data-odds="${odd}" data-name="双面-小"/></td>

                    <c:set var="lottery" value="${odds['单']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="双面-单" style="cursor: pointer;"><strong>单</strong></td>
                    <td data-num="双面-单" style="cursor: pointer;"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="双面-单"><input type="text" class="table-txt" data-bet-code="${lottery.betCode}" data-play="${pointsSingleDouble}" data-bet-num="${lottery.betNum}" data-odds="${odd}" data-name="双面-单"/></td>

                    <c:set var="lottery" value="${odds['双']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="双面-双" style="cursor: pointer;"><strong>双</strong></td>
                    <td data-num="双面-双" style="cursor: pointer;"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="双面-双"><input type="text" class="table-txt" data-bet-code="${lottery.betCode}" data-play="${pointsSingleDouble}" data-bet-num="${lottery.betNum}" data-odds="${odd}" data-name="双面-双"/></td>
                </tr>
                </tbody>
            </table>
            <br/>
            <table width="100%" border="1">
                <thead>
                <tr>
                    <th colspan="15">点数</th>
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
                    <th>号码</th>
                    <th>赔率</th>
                    <th>金额</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="i" begin="4" end="17">
                    <c:if test="${i%4==0}">
                        <tr>
                    </c:if>
                    <c:set var="lottery" value="${odds[i.toString()]}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="点数-${i}" style="cursor: pointer;"><strong>${i}</strong></td>
                    <td data-num="点数-${i}" style="cursor: pointer;"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="点数-${i}"><input type="text" class="table-txt" data-bet-code="${lottery.betCode}" data-play="${pointsPlay[i.toString()]}" data-bet-num="${lottery.betNum}" data-odds="${odd}" data-name="点数-${i}"/></td>
                    <c:if test="${i%4==3||i==17}">
                        <c:if test="${i==17}">
                            <td colspan="6"></td>
                        </c:if>
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
