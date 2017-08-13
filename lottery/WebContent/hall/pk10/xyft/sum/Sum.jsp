<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<c:set var="odds" value="${oddMap['champion_up_sum']}"/>
<div class="table-common">
    <table class="xyft-table" style="width:100%!important;">
        <thead>
        <tr style="line-height: 23px;">
            <td style="border: 0px; cursor: pointer;" colspan="4">
                <table class="touzhuArea_gyjh" style="width: 100%;">
                    <tbody>
                    <tr>
                        <th colspan="4" style="width: 100%;background: white;font-weight: bold;">冠、亚军和(冠军车号 +
                            亚军车号 = 和)
                        </th>
                    </tr>
                    </tbody>
                </table>
            </td>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td class="td_style">
                <table class="touzhuArea touzhuArea_gyjh_content">
                    <tbody>
                    <c:set var="lottery" value="${odds['03']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <tr>
                        <td style="cursor: pointer;">3</td>
                        <td class="pl pl-color" data-plid="10002" style="cursor: pointer;">${odd}</td>
                        <td><input class="amount-input"
                                   data-odds="${odd}" data-bet-code="${lottery.betCode}"
                                   data-play="${championUpAlone34}" data-bet-num="${lottery.betNum}"

                                   data-name="冠亚和-${lottery.betNum}" data-plid="10002" type="text"></input>
                        </td>
                    </tr>
                    <c:set var="lottery" value="${odds['07']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <tr>
                        <td style="cursor: pointer;">7</td>
                        <td class="pl pl-color" data-plid="10006" style="cursor: pointer;">${odd}</td>
                        <td><input class="amount-input"
                                   data-odds="${odd}" data-bet-code="${lottery.betCode}"
                                   data-play="${championUpAlone78}" data-bet-num="${lottery.betNum}"

                                   data-name="冠亚和-${lottery.betNum}" data-plid="10002" type="text"></input>
                        </td>
                    </tr>
                    <c:set var="lottery" value="${odds['11']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <tr>
                        <td style="cursor: pointer;">11</td>
                        <td class="pl pl-color" data-plid="10010" style="cursor: pointer;">${odd}</td>
                        <td><input class="amount-input"
                                   data-odds="${odd}" data-bet-code="${lottery.betCode}"
                                   data-play="${championUpAlone11}" data-bet-num="${lottery.betNum}"

                                   data-name="冠亚和-${lottery.betNum}" data-plid="10002" type="text"></input>
                        </td>
                    </tr>
                    <c:set var="lottery" value="${odds['15']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <tr>
                        <td style="cursor: pointer;">15</td>
                        <td class="pl pl-color" data-plid="10010" style="cursor: pointer;">${odd}</td>
                        <td><input class="amount-input"
                                   data-odds="${odd}" data-bet-code="${lottery.betCode}"
                                   data-play="${championUpAlone78}" data-bet-num="${lottery.betNum}"

                                   data-name="冠亚和-${lottery.betNum}" data-plid="10002" type="text"></input>
                        </td>
                    </tr>
                    <c:set var="lottery" value="${odds['19']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <tr>
                        <td style="cursor: pointer;">19</td>
                        <td class="pl pl-color" data-plid="10010" style="cursor: pointer;">${odd}</td>
                        <td><input class="amount-input"
                                   data-odds="${odd}" data-bet-code="${lottery.betCode}"
                                   data-play="${championUpAlone34}" data-bet-num="${lottery.betNum}"

                                   data-name="冠亚和-${lottery.betNum}" data-plid="10002" type="text"></input>
                        </td>
                    </tr>
                    <c:set var="lottery" value="${odds['大']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <tr>
                        <td style="cursor: pointer;">冠亚大</td>
                        <td class="pl pl-color" data-plid="10010" style="cursor: pointer;">${odd}</td>
                        <td><input class="amount-input"
                                   data-odds="${odd}" data-bet-code="${lottery.betCode}"
                                   data-play="${championUpBigSmall}" data-bet-num="${lottery.betNum}"

                                   data-name="冠亚大" data-plid="10002" type="text"></input>
                        </td>
                    </tr>
                    <c:set var="lottery" value="${odds['大双']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <tr>
                        <td style="cursor: pointer;">冠亚大双</td>
                        <td class="pl pl-color" data-plid="10010" style="cursor: pointer;">${odd}</td>
                        <td><input class="amount-input"
                                   data-odds="${odd}" data-bet-code="${lottery.betCode}"
                                   data-play="${championUpHalf}" data-bet-num="${lottery.betNum}"

                                   data-name="冠亚大双" data-plid="10002" type="text"></input>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </td>

            <td class="td_style">
                <table class="touzhuArea touzhuArea_gyjh_content">
                    <tbody>
                    <c:set var="lottery" value="${odds['04']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <tr>
                        <td style="cursor: pointer;">4</td>
                        <td class="pl pl-color" data-plid="10010" style="cursor: pointer;">${odd}</td>
                        <td><input class="amount-input"
                                   data-odds="${odd}" data-bet-code="${lottery.betCode}"
                                   data-play="${championUpAlone34}" data-bet-num="${lottery.betNum}"

                                   data-name="冠亚和-${lottery.betNum}" data-plid="10002" type="text"></input>
                        </td>
                    </tr>
                    <c:set var="lottery" value="${odds['08']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <tr>
                        <td style="cursor: pointer;">8</td>
                        <td class="pl pl-color" data-plid="10010" style="cursor: pointer;">${odd}</td>
                        <td><input class="amount-input"
                                   data-odds="${odd}" data-bet-code="${lottery.betCode}"
                                   data-play="${championUpAlone78}" data-bet-num="${lottery.betNum}"

                                   data-name="冠亚和-${lottery.betNum}" data-plid="10002" type="text"></input>
                        </td>
                    </tr>
                    <c:set var="lottery" value="${odds['12']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <tr>
                        <td style="cursor: pointer;">12</td>
                        <td class="pl pl-color" data-plid="10010" style="cursor: pointer;">${odd}</td>
                        <td><input class="amount-input"
                                   data-odds="${odd}" data-bet-code="${lottery.betCode}"
                                   data-play="${championUpAlone910}" data-bet-num="${lottery.betNum}"

                                   data-name="冠亚和-${lottery.betNum}" data-plid="10002" type="text"></input>
                        </td>
                    </tr>
                    <c:set var="lottery" value="${odds['16']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <tr>
                        <td style="cursor: pointer;">16</td>
                        <td class="pl pl-color" data-plid="10010" style="cursor: pointer;">${odd}</td>
                        <td><input class="amount-input"
                                   data-odds="${odd}" data-bet-code="${lottery.betCode}"
                                   data-play="${championUpAlone56}" data-bet-num="${lottery.betNum}"

                                   data-name="冠亚和-${lottery.betNum}" data-plid="10002" type="text"></input>
                        </td>
                    </tr>
                    <tr class="wu">
                        <td style="cursor: pointer;"></td>
                        <td style="cursor: pointer;"></td>
                        <td style="cursor: pointer;"></td>
                    </tr>
                    <c:set var="lottery" value="${odds['小']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <tr>
                        <td style="cursor: pointer;">冠亚小</td>
                        <td class="pl pl-color" data-plid="10010" style="cursor: pointer;">${odd}</td>
                        <td><input class="amount-input"
                                   data-odds="${odd}" data-bet-code="${lottery.betCode}"
                                   data-play="${championUpBigSmall}" data-bet-num="${lottery.betNum}"

                                   data-name="冠亚和-${lottery.betNum}" data-plid="10002" type="text"></input>
                        </td>
                    </tr>
                    <c:set var="lottery" value="${odds['大单']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <tr>
                        <td style="cursor: pointer;">冠亚大单</td>
                        <td class="pl pl-color" data-plid="10010" style="cursor: pointer;">${odd}</td>
                        <td><input class="amount-input"
                                   data-odds="${odd}" data-bet-code="${lottery.betCode}"
                                   data-play="${championUpHalf}" data-bet-num="${lottery.betNum}"

                                   data-name="冠亚和-${lottery.betNum}" data-plid="10002" type="text"></input>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </td>

            <td class="td_style">
                <table class="touzhuArea touzhuArea_gyjh_content">
                    <tbody>
                    <c:set var="lottery" value="${odds['05']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <tr>
                        <td style="cursor: pointer;">5</td>
                        <td class="pl pl-color" data-plid="10010" style="cursor: pointer;">${odd}</td>
                        <td><input class="amount-input"
                                   data-odds="${odd}" data-bet-code="${lottery.betCode}"
                                   data-play="${championUpAlone56}" data-bet-num="${lottery.betNum}"

                                   data-name="冠亚和-${lottery.betNum}" data-plid="10002" type="text"></input>
                        </td>
                    </tr>
                    <c:set var="lottery" value="${odds['09']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <tr>
                        <td style="cursor: pointer;">9</td>
                        <td class="pl pl-color" data-plid="10010" style="cursor: pointer;">${odd}</td>
                        <td><input class="amount-input"
                                   data-odds="${odd}" data-bet-code="${lottery.betCode}"
                                   data-play="${championUpAlone910}" data-bet-num="${lottery.betNum}"

                                   data-name="冠亚和-${lottery.betNum}" data-plid="10002" type="text"></input>
                        </td>
                    </tr>
                    <c:set var="lottery" value="${odds['13']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <tr>
                        <td style="cursor: pointer;">13</td>
                        <td class="pl pl-color" data-plid="10010" style="cursor: pointer;">${odd}</td>
                        <td><input class="amount-input"
                                   data-odds="${odd}" data-bet-code="${lottery.betCode}"
                                   data-play="${championUpAlone910}" data-bet-num="${lottery.betNum}"

                                   data-name="冠亚和-${lottery.betNum}" data-plid="10002" type="text"></input>
                        </td>
                    </tr>
                    <c:set var="lottery" value="${odds['17']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <tr>
                        <td style="cursor: pointer;">17</td>
                        <td class="pl pl-color" data-plid="10010" style="cursor: pointer;">${odd}</td>
                        <td><input class="amount-input"
                                   data-odds="${odd}" data-bet-code="${lottery.betCode}"
                                   data-play="${championUpAlone56}" data-bet-num="${lottery.betNum}"

                                   data-name="冠亚和-${lottery.betNum}" data-plid="10002" type="text"></input>
                        </td>
                    </tr>
                    <tr class="wu">
                        <td style="cursor: pointer;"></td>
                        <td style="cursor: pointer;"></td>
                        <td style="cursor: pointer;"></td>
                    </tr>
                    <c:set var="lottery" value="${odds['单']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <tr>
                        <td style="cursor: pointer;">冠亚单</td>
                        <td class="pl pl-color" data-plid="10010" style="cursor: pointer;">${odd}</td>
                        <td><input class="amount-input"
                                   data-odds="${odd}" data-bet-code="${lottery.betCode}"
                                   data-play="${championUpSingleDouble}" data-bet-num="${lottery.betNum}"

                                   data-name="冠亚和-${lottery.betNum}" data-plid="10002" type="text"></input>
                        </td>
                    </tr>
                    <c:set var="lottery" value="${odds['小双']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <tr>
                        <td style="cursor: pointer;">冠亚小双</td>
                        <td class="pl pl-color" data-plid="10010" style="cursor: pointer;">${odd}</td>
                        <td><input class="amount-input"
                                   data-odds="${odd}" data-bet-code="${lottery.betCode}"
                                   data-play="${championUpHalf}" data-bet-num="${lottery.betNum}"

                                   data-name="冠亚和-${lottery.betNum}" data-plid="10002" type="text"></input>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </td>

            <td class="td_style">
                <table class="touzhuArea touzhuArea_gyjh_content">
                    <tbody>
                    <c:set var="lottery" value="${odds['06']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <tr>
                        <td style="cursor: pointer;">6</td>
                        <td class="pl pl-color" data-plid="10010" style="cursor: pointer;">${odd}</td>
                        <td><input class="amount-input"
                                   data-odds="${odd}" data-bet-code="${lottery.betCode}"
                                   data-play="${championUpAlone56}" data-bet-num="${lottery.betNum}"

                                   data-name="冠亚和-${lottery.betNum}" data-plid="10002" type="text"></input>
                        </td>
                    </tr>
                    <c:set var="lottery" value="${odds['10']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <tr>
                        <td style="cursor: pointer;">10</td>
                        <td class="pl pl-color" data-plid="10010" style="cursor: pointer;">${odd}</td>
                        <td><input class="amount-input"
                                   data-odds="${odd}" data-bet-code="${lottery.betCode}"
                                   data-play="${championUpAlone910}" data-bet-num="${lottery.betNum}"

                                   data-name="冠亚和-${lottery.betNum}" data-plid="10002" type="text"></input>
                        </td>
                    </tr>
                    <c:set var="lottery" value="${odds['14']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <tr>
                        <td style="cursor: pointer;">14</td>
                        <td class="pl pl-color" data-plid="10010" style="cursor: pointer;">${odd}</td>
                        <td><input class="amount-input"
                                   data-odds="${odd}" data-bet-code="${lottery.betCode}"
                                   data-play="${championUpAlone78}" data-bet-num="${lottery.betNum}"

                                   data-name="冠亚和-${lottery.betNum}" data-plid="10002" type="text"></input>
                        </td>
                    </tr>
                    <c:set var="lottery" value="${odds['18']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <tr>
                        <td style="cursor: pointer;">18</td>
                        <td class="pl pl-color" data-plid="10010" style="cursor: pointer;">${odd}</td>
                        <td><input class="amount-input"
                                   data-odds="${odd}" data-bet-code="${lottery.betCode}"
                                   data-play="${championUpAlone34}" data-bet-num="${lottery.betNum}"

                                   data-name="冠亚和-${lottery.betNum}" data-plid="10002" type="text"></input>
                        </td>
                    </tr>
                    <tr class="wu">
                        <td style="cursor: pointer;"></td>
                        <td style="cursor: pointer;"></td>
                        <td style="cursor: pointer;"></td>
                    </tr>
                    <c:set var="lottery" value="${odds['双']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <tr>
                        <td style="cursor: pointer;">冠亚双</td>
                        <td class="pl pl-color" data-plid="10010" style="cursor: pointer;">${odd}</td>
                        <td><input class="amount-input"
                                   data-odds="${odd}" data-bet-code="${lottery.betCode}"
                                   data-play="${championUpSingleDouble}" data-bet-num="${lottery.betNum}"

                                   data-name="冠亚和-${lottery.betNum}" data-plid="10002" type="text"></input>
                        </td>
                    </tr>
                    <c:set var="lottery" value="${odds['小单']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <tr>
                        <td style="cursor: pointer;">冠亚小单</td>
                        <td class="pl pl-color" data-plid="10010" style="cursor: pointer;">${odd}</td>
                        <td><input class="amount-input"
                                   data-odds="${odd}" data-bet-code="${lottery.betCode}"
                                   data-play="${championUpHalf}" data-bet-num="${lottery.betNum}"

                                   data-name="冠亚和-${lottery.betNum}" data-plid="10002" type="text"></input>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </td>


        </tr>
        </tbody>
    </table>
</div>

