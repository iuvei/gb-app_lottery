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
                    <c:set var="lottery" value="${odds['3']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="3"  class="pointer"><strong>3</strong></td>

                    <td data-num="3"  class="pointer"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="3"><input class="table-txt"
                                                            data-odds="${odd}" data-bet-code="${lottery.betCode}"
                                                            data-play="${championUp34}"
                                                            data-bet-num="${lottery.betNum}"

                                                            data-name="冠亚和-${lottery.betNum}" data-plid="10002"
                                                            type="text"></input>
                    </td>

                    <c:set var="lottery" value="${odds['4']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="4"  class="pointer"><strong>4</strong></td>

                    <td data-num="4"  class="pointer"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="4"><input class="table-txt"
                                             data-odds="${odd}" data-bet-code="${lottery.betCode}"
                                             data-play="${championUp34}"
                                             data-bet-num="${lottery.betNum}"

                                             data-name="冠亚和-${lottery.betNum}" data-plid="10002"
                                             type="text"></input>
                    </td>

                    <c:set var="lottery" value="${odds['5']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="5"  class="pointer"><strong>5</strong></td>

                    <td data-num="5"  class="pointer"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="5"><input class="table-txt"
                                             data-odds="${odd}" data-bet-code="${lottery.betCode}"
                                             data-play="${championUp56}"
                                             data-bet-num="${lottery.betNum}"

                                             data-name="冠亚和-${lottery.betNum}" data-plid="10002"
                                             type="text"></input>
                    </td>

                    <c:set var="lottery" value="${odds['6']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="6"  class="pointer"><strong>6</strong></td>

                    <td data-num="6"  class="pointer"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="6"><input class="table-txt"
                                             data-odds="${odd}" data-bet-code="${lottery.betCode}"
                                             data-play="${championUp56}"
                                             data-bet-num="${lottery.betNum}"

                                             data-name="冠亚和-${lottery.betNum}" data-plid="10002"
                                             type="text"></input>
                    </td>

                </tr>

                <tr>
                    <c:set var="lottery" value="${odds['7']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="7"  class="pointer"><strong>7</strong></td>

                    <td data-num="7"  class="pointer"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="7"><input class="table-txt"
                                            data-odds="${odd}" data-bet-code="${lottery.betCode}"
                                            data-play="${championUp78}"
                                            data-bet-num="${lottery.betNum}"

                                            data-name="冠亚和-${lottery.betNum}" data-plid="10002"
                                            type="text"></input>
                    </td>

                    <c:set var="lottery" value="${odds['8']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="8"  class="pointer"><strong>8</strong></td>

                    <td data-num="8"  class="pointer"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="8"><input class="table-txt"
                                            data-odds="${odd}" data-bet-code="${lottery.betCode}"
                                            data-play="${championUp78}"
                                            data-bet-num="${lottery.betNum}"

                                            data-name="冠亚和-${lottery.betNum}" data-plid="10002"
                                            type="text"></input>
                    </td>

                    <c:set var="lottery" value="${odds['9']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="9"  class="pointer"><strong>9</strong></td>

                    <td data-num="9"  class="pointer"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="9"><input class="table-txt"
                                            data-odds="${odd}" data-bet-code="${lottery.betCode}"
                                            data-play="${championUp910}"
                                            data-bet-num="${lottery.betNum}"

                                            data-name="冠亚和-${lottery.betNum}" data-plid="10002"
                                            type="text"></input>
                    </td>

                    <c:set var="lottery" value="${odds['10']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="10"  class="pointer"><strong>10</strong></td>

                    <td data-num="10"  class="pointer"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="10"><input class="table-txt"
                                            data-odds="${odd}" data-bet-code="${lottery.betCode}"
                                            data-play="${championUp910}"
                                            data-bet-num="${lottery.betNum}"

                                            data-name="冠亚和-${lottery.betNum}" data-plid="10002"
                                            type="text"></input>
                    </td>


                </tr>

                <tr>
                    <c:set var="lottery" value="${odds['11']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" class="pointer"><strong>11</strong></td>
                    <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="${lottery.betNum}"><input class="table-txt"
                                                            data-odds="${odd}" data-bet-code="${lottery.betCode}"
                                                            data-play="${championUpAlone11}"
                                                            data-bet-num="${lottery.betNum}"

                                                            data-name="冠亚和-${lottery.betNum}" data-plid="10002"
                                                            type="text"></input>
                    </td>

                    <c:set var="lottery" value="${odds['12']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="12"  class="pointer"><strong>12</strong></td>

                    <td data-num="12"  class="pointer"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="12"><input class="table-txt"
                                             data-odds="${odd}" data-bet-code="${lottery.betCode}"
                                             data-play="${championUp910}"
                                             data-bet-num="${lottery.betNum}"

                                             data-name="冠亚和-${lottery.betNum}" data-plid="10002"
                                             type="text"></input>
                    </td>

                    <c:set var="lottery" value="${odds['13']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="13"  class="pointer"><strong>13</strong></td>

                    <td data-num="13"  class="pointer"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="13"><input class="table-txt"
                                             data-odds="${odd}" data-bet-code="${lottery.betCode}"
                                             data-play="${championUp910}"
                                             data-bet-num="${lottery.betNum}"

                                             data-name="冠亚和-${lottery.betNum}" data-plid="10002"
                                             type="text"></input>
                    </td>

                    <c:set var="lottery" value="${odds['14']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="14"  class="pointer"><strong>14</strong></td>

                    <td data-num="14"  class="pointer"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="14"><input class="table-txt"
                                             data-odds="${odd}" data-bet-code="${lottery.betCode}"
                                             data-play="${championUp78}"
                                             data-bet-num="${lottery.betNum}"

                                             data-name="冠亚和-${lottery.betNum}" data-plid="10002"
                                             type="text"></input>
                    </td>
                </tr>
                <tr>
                    <c:set var="lottery" value="${odds['15']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="15"  class="pointer"><strong>15</strong></td>

                    <td data-num="15"  class="pointer"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="15"><input class="table-txt"
                                             data-odds="${odd}" data-bet-code="${lottery.betCode}"
                                             data-play="${championUp78}"
                                             data-bet-num="${lottery.betNum}"

                                             data-name="冠亚和-${lottery.betNum}" data-plid="10002"
                                             type="text"></input>
                    </td>

                    <c:set var="lottery" value="${odds['16']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="16"  class="pointer"><strong>16</strong></td>

                    <td data-num="16"  class="pointer"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="16"><input class="table-txt"
                                             data-odds="${odd}" data-bet-code="${lottery.betCode}"
                                             data-play="${championUp56}"
                                             data-bet-num="${lottery.betNum}"

                                             data-name="冠亚和-${lottery.betNum}" data-plid="10002"
                                             type="text"></input>
                    </td>

                    <c:set var="lottery" value="${odds['17']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="17"  class="pointer"><strong>17</strong></td>

                    <td data-num="17"  class="pointer"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="17"><input class="table-txt"
                                             data-odds="${odd}" data-bet-code="${lottery.betCode}"
                                             data-play="${championUp56}"
                                             data-bet-num="${lottery.betNum}"

                                             data-name="冠亚和-${lottery.betNum}" data-plid="10002"
                                             type="text"></input>
                    </td>

                    <c:set var="lottery" value="${odds['18']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="18"  class="pointer"><strong>18</strong></td>

                    <td data-num="18"  class="pointer"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="18"><input class="table-txt"
                                             data-odds="${odd}" data-bet-code="${lottery.betCode}"
                                             data-play="${championUp34}"
                                             data-bet-num="${lottery.betNum}"

                                             data-name="冠亚和-${lottery.betNum}" data-plid="10002"
                                             type="text"></input>
                    </td>
                </tr>
                <tr>
                    <c:set var="lottery" value="${odds['19']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="19"  class="pointer"><strong>19</strong></td>

                    <td data-num="19"  class="pointer"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="19"><input class="table-txt"
                                             data-odds="${odd}" data-bet-code="${lottery.betCode}"
                                             data-play="${championUp34}"
                                             data-bet-num="${lottery.betNum}"

                                             data-name="冠亚和-${lottery.betNum}" data-plid="10002"
                                             type="text"></input>
                    </td>

                    <td></td>
                    <td></td>
                    <td></td>

                    <td></td>
                    <td></td>
                    <td></td>

                    <td></td>
                    <td></td>
                    <td></td>

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
