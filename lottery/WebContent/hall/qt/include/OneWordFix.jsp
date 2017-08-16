<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>

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
        <td data-num="${lottery.betNum}"><input type="text" class="table-txt num0" data-name="${title}-0" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3OneDigital}" data-bet-num="0"/></td>

        <c:set var="lottery" value="${odds['1']}"/>
        <c:set var="odd" value="${lottery.odd}"/>
        <td data-num="${lottery.betNum}" class="pointer"><strong>1</strong></td>
        <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl num1">${odd}</strong></td>
        <td data-num="${lottery.betNum}"><input type="text" class="table-txt num1" data-name="${title}-1" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3OneDigital}" data-bet-num="1"/></td>

        <c:set var="lottery" value="${odds['2']}"/>
        <c:set var="odd" value="${lottery.odd}"/>
        <td data-num="${lottery.betNum}" class="pointer"><strong>2</strong></td>
        <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl num2">${odd}</strong></td>
        <td data-num="${lottery.betNum}"><input type="text" class="table-txt num2" data-name="${title}-2" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3OneDigital}" data-bet-num="2"/></td>

        <c:set var="lottery" value="${odds['3']}"/>
        <c:set var="odd" value="${lottery.odd}"/>
        <td data-num="${lottery.betNum}" class="pointer"><strong>3</strong></td>
        <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl num3">${odd}</strong></td>
        <td data-num="${lottery.betNum}"><input type="text" class="table-txt num3" data-name="${title}-3" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3OneDigital}" data-bet-num="3"/></td>

        <c:set var="lottery" value="${odds['4']}"/>
        <c:set var="odd" value="${lottery.odd}"/>
        <td data-num="${lottery.betNum}" class="pointer"><strong>4</strong></td>
        <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl num4">${odd}</strong></td>
        <td data-num="${lottery.betNum}"><input type="text" class="table-txt num4" data-name="${title}-4" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3OneDigital}" data-bet-num="4"/></td>
    </tr>
    <tr>
        <c:set var="lottery" value="${odds['5']}"/>
        <c:set var="odd" value="${lottery.odd}"/>
        <td data-num="${lottery.betNum}" class="pointer"><strong>5</strong></td>
        <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl num5">${odd}</strong></td>
        <td data-num="${lottery.betNum}"><input type="text" class="table-txt num5" data-name="${title}-5" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3OneDigital}" data-bet-num="5"/></td>

        <c:set var="lottery" value="${odds['6']}"/>
        <c:set var="odd" value="${lottery.odd}"/>
        <td data-num="${lottery.betNum}" class="pointer"><strong>6</strong></td>
        <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl num6">${odd}</strong></td>
        <td data-num="${lottery.betNum}"><input type="text" class="table-txt num6" data-name="${title}-6" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3OneDigital}" data-bet-num="6"/></td>

        <c:set var="lottery" value="${odds['7']}"/>
        <c:set var="odd" value="${lottery.odd}"/>
        <td data-num="${lottery.betNum}" class="pointer"><strong>7</strong></td>
        <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl num7">${odd}</strong></td>
        <td data-num="${lottery.betNum}"><input type="text" class="table-txt num7" data-name="${title}-7" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3OneDigital}" data-bet-num="7"/></td>

        <c:set var="lottery" value="${odds['8']}"/>
        <c:set var="odd" value="${lottery.odd}"/>
        <td data-num="${lottery.betNum}" class="pointer"><strong>8</strong></td>
        <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl num8">${odd}</strong></td>
        <td data-num="${lottery.betNum}"><input type="text" class="table-txt num8" data-name="${title}-8" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3OneDigital}" data-bet-num="8"/></td>

        <c:set var="lottery" value="${odds['9']}"/>
        <c:set var="odd" value="${lottery.odd}"/>
        <td data-num="${lottery.betNum}" class="pointer"><strong>9</strong></td>
        <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl num9">${odd}</strong></td>
        <td data-num="${lottery.betNum}"><input type="text" class="table-txt num9" data-name="${title}-9" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3OneDigital}" data-bet-num="9"/></td>

    </tr>
    <tr>
        <c:set var="lottery" value="${odds['大']}"/>
        <c:set var="odd" value="${lottery.odd}"/>
        <td data-num="${lottery.betNum}" class="pointer"><strong>大</strong></td>
        <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
        <td data-num="${lottery.betNum}"><input type="text" class="table-txt large" data-name="${title}-大" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3OneBigSmall}" data-bet-num="大"/></td>


        <c:set var="lottery" value="${odds['单']}"/>
        <c:set var="odd" value="${lottery.odd}"/>
        <td data-num="${lottery.betNum}" class="pointer"><strong>单</strong></td>
        <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
        <td data-num="${lottery.betNum}"><input type="text" class="table-txt single" data-name="${title}-单" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3OneSingleDouble}" data-bet-num="单"/></td>


        <c:set var="lottery" value="${odds['质']}"/>
        <c:set var="odd" value="${lottery.odd}"/>
        <td data-num="${lottery.betNum}" class="pointer"><strong>质</strong></td>
        <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
        <td data-num="${lottery.betNum}"><input type="text" class="table-txt prime" data-name="${title}-质" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3OnePrimeCombined}" data-bet-num="质"/></td>

        <td></td><td></td><td></td><td></td><td></td><td></td>
    </tr>
    <tr>
        <c:set var="lottery" value="${odds['小']}"/>
        <c:set var="odd" value="${lottery.odd}"/>
        <td data-num="${lottery.betNum}" class="pointer"><strong>小</strong></td>
        <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
        <td data-num="${lottery.betNum}"><input type="text" class="table-txt little" data-name="${title}-小" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3OneBigSmall}" data-bet-num="小"/></td>

        <c:set var="lottery" value="${odds['双']}"/>
        <c:set var="odd" value="${lottery.odd}"/>
        <td data-num="${lottery.betNum}" class="pointer"><strong>双</strong></td>
        <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
        <td data-num="${lottery.betNum}"><input type="text" class="table-txt twin" data-name="${title}-双" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3OneSingleDouble}" data-bet-num="双"/></td>

        <c:set var="lottery" value="${odds['合']}"/>
        <c:set var="odd" value="${lottery.odd}"/>
        <td data-num="${lottery.betNum}" class="pointer"><strong>合</strong></td>
        <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
        <td data-num="${lottery.betNum}"><input type="text" class="table-txt composite" data-name="${title}-合" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3OnePrimeCombined}" data-bet-num="合"/></td>

        <td></td><td></td><td></td><td></td><td></td><td></td>
    </tr>
    </tbody>
</table>
