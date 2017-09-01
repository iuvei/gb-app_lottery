<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<div class="lot-content clearfix">
    <div class="fl main-left">
        <div class="hd rehd clearfix">
            <%@ include file="../../common/ShortMoney.jsp" %>
        </div>
        <div class="table-common">

            <table width="100%" border="1">
                <thead>
                <tr>
                    <th colspan="16"><strong>其他</strong></th>
                </tr>
                </thead>
                <c:set var="odds" value="${oddMap['keno_sum20']}"/>
                <c:set var="playGroupName" value="和值"/>
                <tbody>
                <tr>
                    <td style="cursor: pointer;"><strong>和值</strong></td>
                    <c:set var="lottery" value="${odds['单']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;"><strong>单</strong></td>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;">
                        <strong class="color-red pl" data-plid="8582">${odd}</strong>
                    </td>
                    <td data-num="${lottery.betNum}">
                        <input type="text" class="table-txt" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${kenoSum20SingleDouble}" data-bet-num="${lottery.betNum}" data-name="和值-${lottery.betNum}"/>
                    </td>

                    <c:set var="lottery" value="${odds['双']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;"><strong>双</strong></td>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="${lottery.betNum}">
                        <input type="text" class="table-txt" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${kenoSum20SingleDouble}" data-bet-num="${lottery.betNum}" data-name="和值-${lottery.betNum}"/>
                    </td>

                    <c:set var="lottery" value="${odds['大']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;"><strong>大</strong></td>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;">
                        <strong class="color-red pl" data-plid="8582">${odd}</strong>
                    </td>
                    <td data-num="${lottery.betNum}">
                        <input type="text" class="table-txt" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${kenoSum20BigSmall}" data-bet-num="${lottery.betNum}"  data-name="和值-${lottery.betNum}"/>
                    </td>

                    <c:set var="lottery" value="${odds['小']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;"><strong>小</strong></td>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="${lottery.betNum}">
                        <input type="text" class="table-txt" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${kenoSum20BigSmall}" data-bet-num="${lottery.betNum}" data-name="和值-${lottery.betNum}"/>
                    </td>

                    <c:set var="lottery" value="${odds['810']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;"><strong>810</strong></td>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="${lottery.betNum}"><input type="text" class="table-txt"
                        data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${kenoSum20BigSmall}"
                        data-bet-num="${lottery.betNum}" data-name="和值-${lottery.betNum}"
                    /></td>
                </tr>
                <c:set var="odds" value="${oddMap['keno_number']}"/>
                <c:set var="playGroupName" value="上中下盘"/>
                <tr>
                    <td   style="cursor: pointer;"><strong>上中下盘</strong></td>
                    <c:set var="lottery" value="${odds['上']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;"><strong>上</strong></td>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="${lottery.betNum}">
                        <input type="text" class="table-txt" data-odds="${odd}" data-bet-code="${lottery.betCode}"  data-play="${kenoUpDown}" data-bet-num="${lottery.betNum}" data-name="上中下盘-${lottery.betNum}"/>
                    </td>

                    <c:set var="lottery" value="${odds['中']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;"><strong>中</strong></td>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="${lottery.betNum}">
                        <input type="text" class="table-txt" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${kenoUpDown}" data-bet-num="${lottery.betNum}"  data-name="上中下盘-${lottery.betNum}" />
                    </td>

                    <c:set var="lottery" value="${odds['下']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;"><strong>下</strong></td>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="${lottery.betNum}">
                        <input type="text" class="table-txt" data-odds="${odd}" data-bet-code="${lottery.betCode}"  data-play="${kenoUpDown}" data-bet-num="${lottery.betNum}" data-name="上中下盘-${lottery.betNum}"/>
                    </td>

                    <td style="cursor: pointer;">&nbsp;</td>
                    <td style="cursor: pointer;">&nbsp;</td>
                    <td style="cursor: pointer;">&nbsp;</td>
                    <td style="cursor: pointer;">&nbsp;</td>
                    <td style="cursor: pointer;">&nbsp;</td>
                    <td style="cursor: pointer;">&nbsp;</td>
                </tr>

                <tr>
                    <td   style="cursor: pointer;"><strong>奇偶和盘</strong></td>
                    <c:set var="lottery" value="${odds['奇']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;"><strong>奇</strong></td>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;"><strong class="color-red pl">${odd}</strong>
                    </td>
                    <td data-num="${lottery.betNum}">
                        <input type="text" class="table-txt" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${kenoOddEven}" data-bet-num="${lottery.betNum}" data-name="奇偶和盘-${lottery.betNum}"/>
                    </td>
                    　
                    <c:set var="lottery" value="${odds['和']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;"><strong>和</strong></td>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;"><strong class="color-red pl">${odd}</strong>
                    </td>
                    <td data-num="${lottery.betNum}">
                        <input type="text" class="table-txt" data-odds="${odd}" data-bet-code="${lottery.betCode}"  data-play="${kenoOddEven}" data-bet-num="${lottery.betNum}"  data-name="奇偶和盘-${lottery.betNum}"/>
                    </td>
                    　
                    <c:set var="lottery" value="${odds['偶']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;"><strong>偶</strong></td>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="${lottery.betNum}">
                        <input type="text" class="table-txt" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${kenoOddEven}" data-bet-num="${lottery.betNum}"  data-name="奇偶和盘-${lottery.betNum}"/>
                    </td>
                    <td style="cursor: pointer;">&nbsp;</td>
                    <td style="cursor: pointer;">&nbsp;</td>
                    <td style="cursor: pointer;">&nbsp;</td>
                    <td style="cursor: pointer;">&nbsp;</td>
                    <td style="cursor: pointer;">&nbsp;</td>
                    <td style="cursor: pointer;">&nbsp;</td>
                </tr>
                <c:set var="odds" value="${oddMap['keno_sum20']}"/>
                <c:set var="playGroupName" value="五行"/>
                <tr>
                    <td   style="cursor: pointer;"><strong>五行</strong></td>
                    <c:set var="lottery" value="${odds['金']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;"><strong>金</strong></td>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="${lottery.betNum}">
                        <input type="text" class="table-txt" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${kenoSum20FiveElements}" data-bet-num="${lottery.betNum}" data-name="五行-${lottery.betNum}"/>
                    </td>
                    　
                    <c:set var="lottery" value="${odds['木']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;"><strong>木</strong></td>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="${lottery.betNum}">
                        <input type="text" class="table-txt" data-odds="${odd}" data-bet-code="${lottery.betCode}"  data-play="${kenoSum20FiveElements}" data-bet-num="${lottery.betNum}"  data-name="五行-${lottery.betNum}"/>
                    </td>
                    　
                    <c:set var="lottery" value="${odds['水']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;"><strong>水</strong></td>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="${lottery.betNum}">
                        <input type="text" class="table-txt" data-odds="${odd}" data-bet-code="${lottery.betCode}"  data-play="${kenoSum20FiveElements}" data-bet-num="${lottery.betNum}" data-name="五行-${lottery.betNum}"/>
                    </td>
                    　
                    <c:set var="lottery" value="${odds['火']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;"><strong>火</strong></td>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="${lottery.betNum}">
                        <input type="text" class="table-txt" data-odds="${odd}" data-bet-code="${lottery.betCode}"  data-play="${kenoSum20FiveElements}" data-bet-num="${lottery.betNum}" data-name="五行-${lottery.betNum}"/>
                    </td>
                    　
                    <c:set var="lottery" value="${odds['土']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;"><strong>土</strong></td>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="${lottery.betNum}">
                        <input type="text" class="table-txt" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${kenoSum20FiveElements}" data-bet-num="${lottery.betNum}" data-name="五行-${lottery.betNum}"/>
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


</div>
　
<script type="text/javascript">
    curl(['site/hall/common/PlayWay'], function (PlayWay) {
        page.playWay = new PlayWay();
    });
</script>
