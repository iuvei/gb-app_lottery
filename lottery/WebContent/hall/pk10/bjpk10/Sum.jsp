<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<%-- 冠亚和 --%>
<c:set var="odds" value="${oddMap['champion_up_sum']}"/>
<div class="lot-content clearfix">
    <div class="fl main-left">
        <div class="hd rehd clearfix">
                <%@ include file="../../common/ShortMoney.jsp" %>
        </div>

        <div class="table-common">
            <table width="100%" border="1">
                <thead>
                <tr>
                    <th colspan="12">冠亚军和</th>
                </tr>
                </thead>

                <tbody>
                <tr>
                    <c:set var="lottery" value="${odds['3,4,18,19']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="34" colspan="3" class="pointer"><strong>3,4,18,19</strong></td>

                    <td data-num="34" colspan="2" class="pointer"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="34"><input class="table-txt"
                                                            data-odds="${odd}" data-bet-code="${lottery.betCode}"
                                                            data-play="${championUp34}"
                                                            data-bet-num="${lottery.betNum}"

                                                            data-name="冠亚和-${lottery.betNum}" data-plid="10002"
                                                            type="text"></input>
                    </td>


                    <c:set var="lottery" value="${odds['9,10,12,13']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="910" colspan="3" class="pointer"><strong>9,10,12,13</strong></td>
                    <td data-num="910" colspan="2" class="pointer"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="910"><input class="table-txt"
                                                            data-odds="${odd}" data-bet-code="${lottery.betCode}"
                                                            data-play="${championUp910}"
                                                            data-bet-num="${lottery.betNum}"

                                                            data-name="冠亚和-${lottery.betNum}" data-plid="10002"
                                                            type="text"></input>
                    </td>
                </tr>

                <tr>
                    <c:set var="lottery" value="${odds['5,6,16,17']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="56" colspan="3" class="pointer"><strong>5,6,16,17</strong></td>
                    <td data-num="56" colspan="2" class="pointer"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="56"><input class="table-txt"
                                                            data-odds="${odd}" data-bet-code="${lottery.betCode}"
                                                            data-play="${championUp56}"
                                                            data-bet-num="${lottery.betNum}"

                                                            data-name="冠亚和-${lottery.betNum}" data-plid="10002"
                                                            type="text"></input>
                    </td>

                    <c:set var="lottery" value="${odds['11']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" colspan="3" class="pointer"><strong>11</strong></td>
                    <td data-num="${lottery.betNum}" colspan="2" class="pointer"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="${lottery.betNum}"><input class="table-txt"
                                                            data-odds="${odd}" data-bet-code="${lottery.betCode}"
                                                            data-play="${championUpAlone11}"
                                                            data-bet-num="${lottery.betNum}"

                                                            data-name="冠亚和-${lottery.betNum}" data-plid="10002"
                                                            type="text"></input>
                    </td>
                </tr>

                <tr>
                    <c:set var="lottery" value="${odds['7,8,14,15']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="78" colspan="3" class="pointer"><strong>7,8,14,15</strong></td>
                    <td data-num="78" colspan="2" class="pointer"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="78"><input class="table-txt"
                                                            data-odds="${odd}" data-bet-code="${lottery.betCode}"
                                                            data-play="${championUp78}"
                                                            data-bet-num="${lottery.betNum}"

                                                            data-name="冠亚和-${lottery.betNum}" data-plid="10002"
                                                            type="text"></input>
                    </td>
                    <td colspan="6"  >&nbsp;</td>
                </tr>

                <tr>
                    <c:set var="lottery" value="${odds['和大']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}"   class="pointer"><strong>和大</strong></td>
                    <td data-num="${lottery.betNum}"   class="pointer"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="${lottery.betNum}"><input class="table-txt"
                                                            data-odds="${odd}" data-bet-code="${lottery.betCode}"
                                                            data-play="${championUpBigSmall}"
                                                            data-bet-num="${lottery.betNum}"

                                                            data-name="冠亚和-${lottery.betNum}" data-plid="10002"
                                                            type="text"></input>
                    </td>

                    <c:set var="lottery" value="${odds['和小']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}"   class="pointer"><strong>和小</strong></td>
                    <td data-num="${lottery.betNum}"   class="pointer"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="${lottery.betNum}"><input class="table-txt"
                                                            data-odds="${odd}" data-bet-code="${lottery.betCode}"
                                                            data-play="${championUpBigSmall}"
                                                            data-bet-num="${lottery.betNum}"

                                                            data-name="冠亚和-${lottery.betNum}" data-plid="10002"
                                                            type="text"></input>
                    </td>
                    <c:set var="lottery" value="${odds['和单']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}"   class="pointer"><strong>和单</strong></td>
                    <td data-num="${lottery.betNum}"   class="pointer"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="${lottery.betNum}"><input class="table-txt"
                                                            data-odds="${odd}" data-bet-code="${lottery.betCode}"
                                                            data-play="${championUpSingleDouble}"
                                                            data-bet-num="${lottery.betNum}"

                                                            data-name="冠亚和-${lottery.betNum}" data-plid="10002"
                                                            type="text"></input>
                    </td>

                    <c:set var="lottery" value="${odds['和双']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}"   class="pointer"><strong>和双</strong></td>
                    <td data-num="${lottery.betNum}"   class="pointer"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="${lottery.betNum}"><input class="table-txt"
                                                            data-odds="${odd}" data-bet-code="${lottery.betCode}"
                                                            data-play="${championUpSingleDouble}"
                                                            data-bet-num="${lottery.betNum}"

                                                            data-name="冠亚和-${lottery.betNum}" data-plid="10002"
                                                            type="text"></input>
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

    <%@ include file="../include/include.rank.jsp" %>
</div>

<script type="text/javascript">
    curl(['site/hall/pk10/PlayWay'], function(PlayWay) {
        page.playWay = new PlayWay();
    });

</script>
