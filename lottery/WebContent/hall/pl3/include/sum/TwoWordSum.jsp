<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<c:if test="${fn:length(odds) == 0}">
    <li class="init-tip">暂无数据</li>
</c:if>
<c:if test="${fn:length(odds) > 0}">
    <table width="100%" border="1" class="num">
        <thead>
        <tr>
            <th colspan="15">${title}</th>
        </tr>
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
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}-0" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum2Digital}" data-bet-num="0"/></td>

            <c:set var="lottery" value="${odds['1']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong>1</strong></td>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}-1" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum2Digital}" data-bet-num="1"/></td>

            <c:set var="lottery" value="${odds['2']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong>2</strong></td>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}-2" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum2Digital}" data-bet-num="2"/></td>

            <c:set var="lottery" value="${odds['3']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong>3</strong></td>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}-3" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum2Digital}" data-bet-num="3"/></td>

            <c:set var="lottery" value="${odds['4']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong>4</strong></td>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}-4" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum2Digital}" data-bet-num="4"/></td>
        </tr>
        <tr>
            <c:set var="lottery" value="${odds['5']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong>5</strong></td>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}-5" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum2Digital}" data-bet-num="5"/></td>

            <c:set var="lottery" value="${odds['6']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong>6</strong></td>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}-6" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum2Digital}" data-bet-num="6"/></td>

            <c:set var="lottery" value="${odds['7']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong>7</strong></td>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}-7" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum2Digital}" data-bet-num="7"/></td>

            <c:set var="lottery" value="${odds['8']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong>8</strong></td>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}-8" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum2Digital}" data-bet-num="8"/></td>

            <c:set var="lottery" value="${odds['9']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong>9</strong></td>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}-9" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum2Digital}" data-bet-num="9"/></td>

        </tr>
        <tr>
            <c:set var="lottery" value="${odds['10']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong>10</strong></td>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}-10" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum2Digital}" data-bet-num="10"/></td>

            <c:set var="lottery" value="${odds['11']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong>11</strong></td>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}-11" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum2Digital}" data-bet-num="11"/></td>

            <c:set var="lottery" value="${odds['12']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong>12</strong></td>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}-12" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum2Digital}" data-bet-num="12"/></td>

            <c:set var="lottery" value="${odds['13']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong>13</strong></td>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}-13" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum2Digital}" data-bet-num="13"/></td>

            <c:set var="lottery" value="${odds['14']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong>14</strong></td>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}-14" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum2Digital}" data-bet-num="14"/></td>

        </tr>
        <tr>
            <c:set var="lottery" value="${odds['15']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong>15</strong></td>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}-15" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum2Digital}" data-bet-num="15"/></td>

            <c:set var="lottery" value="${odds['16']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong>16</strong></td>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}-16" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum2Digital}" data-bet-num="16"/></td>

            <c:set var="lottery" value="${odds['17']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong>17</strong></td>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}-17" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum2Digital}" data-bet-num="17"/></td>

            <c:set var="lottery" value="${odds['18']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong>18</strong></td>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}-18" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum2Digital}" data-bet-num="18"/></td>

            <td></td><td></td><td></td>
        </tr>
        </tbody>
    </table>

    <table width="100%" border="1" class="num">
        <thead>
        <tr>
            <th colspan="15">${title}尾数</th>
        </tr>
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
            <c:set var="lottery" value="${odds['尾0']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong>0</strong></td>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}尾数-尾0" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum2Mantissa}" data-bet-num="尾0"/></td>

            <c:set var="lottery" value="${odds['尾1']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong>1</strong></td>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}尾数-尾1" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum2Mantissa}" data-bet-num="尾1"/></td>

            <c:set var="lottery" value="${odds['尾2']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong>2</strong></td>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}尾数-尾2" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum2Mantissa}" data-bet-num="尾2"/></td>

            <c:set var="lottery" value="${odds['尾3']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong>3</strong></td>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}尾数-尾3" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum2Mantissa}" data-bet-num="尾3"/></td>

            <c:set var="lottery" value="${odds['尾4']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong>4</strong></td>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}尾数-尾4" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum2Mantissa}" data-bet-num="尾4"/></td>
        </tr>
        <tr>
            <c:set var="lottery" value="${odds['尾5']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong>5</strong></td>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}尾数-尾5" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum2Mantissa}" data-bet-num="尾5"/></td>

            <c:set var="lottery" value="${odds['尾6']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong>6</strong></td>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}尾数-尾6" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum2Mantissa}" data-bet-num="尾6"/></td>

            <c:set var="lottery" value="${odds['尾7']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong>7</strong></td>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}尾数-尾7" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum2Mantissa}" data-bet-num="尾7"/></td>

            <c:set var="lottery" value="${odds['尾8']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong>8</strong></td>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}尾数-尾8" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum2Mantissa}" data-bet-num="尾8"/></td>

            <c:set var="lottery" value="${odds['尾9']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong>9</strong></td>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}尾数-尾9" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum2Mantissa}" data-bet-num="尾9"/></td>

        </tr>
        </tbody>
    </table>

    <table width="100%" border="1" class="num">
        <thead>
        <tr>
            <th colspan="14">${title}双面</th>
        </tr>
        <tr>
            <th colspan="2"></th>
            <th colspan="2">大</th>
            <th colspan="2">小</th>
            <th colspan="2">单</th>
            <th colspan="2">双</th>
            <th colspan="2">质</th>
            <th colspan="2">合</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td colspan="2"><strong>${title}</strong></td>
            <td></td><td></td><td></td><td></td>

            <c:set var="lottery" value="${odds['单']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}-单" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum2SingleDouble}" data-bet-num="单"/></td>

            <c:set var="lottery" value="${odds['双']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}-双" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum2SingleDouble}" data-bet-num="双"/></td>


            <td></td><td></td><td></td><td></td>
        </tr>
        <tr>
            <td colspan="2"><strong>${title}尾数</strong></td>

            <c:set var="lottery" value="${odds['尾大']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}尾数-尾大" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum2MantissaBigSmall}" data-bet-num="尾大"/></td>

            <c:set var="lottery" value="${odds['尾小']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}尾数-尾小" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum2MantissaBigSmall}" data-bet-num="尾小"/></td>

            <td></td><td></td><td></td><td></td>

            <c:set var="lottery" value="${odds['尾质']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}尾数-尾质" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum2MantissaPrimeCombined}" data-bet-num="尾质"/></td>

            <c:set var="lottery" value="${odds['尾合']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}尾数-尾合" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum2MantissaPrimeCombined}" data-bet-num="尾合"/></td>

        </tr>
        </tbody>
    </table>
</c:if>
