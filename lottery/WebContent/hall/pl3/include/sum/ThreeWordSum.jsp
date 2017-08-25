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
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}-0" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum3Digital}" data-bet-num="0"/></td>

            <c:set var="lottery" value="${odds['1']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong>1</strong></td>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}-1" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum3Digital}" data-bet-num="1"/></td>

            <c:set var="lottery" value="${odds['2']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong>2</strong></td>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}-2" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum3Digital}" data-bet-num="2"/></td>

            <c:set var="lottery" value="${odds['3']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong>3</strong></td>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}-3" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum3Digital}" data-bet-num="3"/></td>

            <c:set var="lottery" value="${odds['4']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong>4</strong></td>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}-4" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum3Digital}" data-bet-num="4"/></td>
        </tr>
        <tr>
            <c:set var="lottery" value="${odds['5']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong>5</strong></td>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}-5" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum3Digital}" data-bet-num="5"/></td>

            <c:set var="lottery" value="${odds['6']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong>6</strong></td>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}-6" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum3Digital}" data-bet-num="6"/></td>

            <c:set var="lottery" value="${odds['7']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong>7</strong></td>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}-7" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum3Digital}" data-bet-num="7"/></td>

            <c:set var="lottery" value="${odds['8']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong>8</strong></td>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}-8" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum3Digital}" data-bet-num="8"/></td>

            <c:set var="lottery" value="${odds['9']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong>9</strong></td>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}-9" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum3Digital}" data-bet-num="9"/></td>

        </tr>
        <tr>
            <c:set var="lottery" value="${odds['10']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong>10</strong></td>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}-10" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum3Digital}" data-bet-num="10"/></td>

            <c:set var="lottery" value="${odds['11']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong>11</strong></td>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}-11" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum3Digital}" data-bet-num="11"/></td>

            <c:set var="lottery" value="${odds['12']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong>12</strong></td>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}-12" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum3Digital}" data-bet-num="12"/></td>

            <c:set var="lottery" value="${odds['13']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong>13</strong></td>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}-13" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum3Digital}" data-bet-num="13"/></td>

            <c:set var="lottery" value="${odds['14']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong>14</strong></td>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}-14" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum3Digital}" data-bet-num="14"/></td>

        </tr>
        <tr>
            <c:set var="lottery" value="${odds['15']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong>15</strong></td>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}-15" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum3Digital}" data-bet-num="15"/></td>

            <c:set var="lottery" value="${odds['16']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong>16</strong></td>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}-16" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum3Digital}" data-bet-num="16"/></td>

            <c:set var="lottery" value="${odds['17']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong>17</strong></td>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}-17" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum3Digital}" data-bet-num="17"/></td>

            <c:set var="lottery" value="${odds['18']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong>18</strong></td>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}-18" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum3Digital}" data-bet-num="18"/></td>

            <c:set var="lottery" value="${odds['19']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong>19</strong></td>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}-19" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum3Digital}" data-bet-num="19"/></td>

        </tr>
        <tr>
            <c:set var="lottery" value="${odds['20']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong>20</strong></td>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}-20" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum3Digital}" data-bet-num="20"/></td>

            <c:set var="lottery" value="${odds['21']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong>21</strong></td>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}-21" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum3Digital}" data-bet-num="21"/></td>

            <c:set var="lottery" value="${odds['22']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong>22</strong></td>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}-22" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum3Digital}" data-bet-num="22"/></td>

            <c:set var="lottery" value="${odds['23']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong>23</strong></td>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}-23" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum3Digital}" data-bet-num="23"/></td>

            <c:set var="lottery" value="${odds['24']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong>24</strong></td>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}-24" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum3Digital}" data-bet-num="24"/></td>
        </tr>
        <tr>
            <c:set var="lottery" value="${odds['25']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong>25</strong></td>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}-25" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum3Digital}" data-bet-num="25"/></td>

            <c:set var="lottery" value="${odds['26']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong>26</strong></td>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}-26" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum3Digital}" data-bet-num="26"/></td>

            <c:set var="lottery" value="${odds['27']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong>27</strong></td>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}-27" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum3Digital}" data-bet-num="27"/></td>

            <td></td><td></td><td></td>
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
            <c:set var="lottery" value="${odds['0']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong>0</strong></td>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}尾数-0尾" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum3Mantissa}" data-bet-num="0尾"/></td>

            <c:set var="lottery" value="${odds['1尾']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong>1</strong></td>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}尾数-1尾" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum3Mantissa}" data-bet-num="1尾"/></td>

            <c:set var="lottery" value="${odds['2尾']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong>2</strong></td>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}尾数-2尾" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum3Mantissa}" data-bet-num="2尾"/></td>

            <c:set var="lottery" value="${odds['3尾']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong>3</strong></td>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}尾数-3尾" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum3Mantissa}" data-bet-num="3尾"/></td>

            <c:set var="lottery" value="${odds['4尾']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong>4</strong></td>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}尾数-4尾" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum3Mantissa}" data-bet-num="4尾"/></td>
        </tr>
        <tr>
            <c:set var="lottery" value="${odds['5尾']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong>5</strong></td>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}尾数-5尾" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum3Mantissa}" data-bet-num="5尾"/></td>

            <c:set var="lottery" value="${odds['6尾']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong>6</strong></td>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}尾数-6尾" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum3Mantissa}" data-bet-num="6尾"/></td>

            <c:set var="lottery" value="${odds['7尾']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong>7</strong></td>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}尾数-7尾" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum3Mantissa}" data-bet-num="7尾"/></td>

            <c:set var="lottery" value="${odds['8尾']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong>8</strong></td>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}尾数-8尾" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum3Mantissa}" data-bet-num="8尾"/></td>

            <c:set var="lottery" value="${odds['9尾']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong>9</strong></td>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}尾数-9尾" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum3Mantissa}" data-bet-num="9尾"/></td>

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

            <c:set var="lottery" value="${odds['大']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}-大" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum3BigSmall}" data-bet-num="大"/></td>

            <c:set var="lottery" value="${odds['小']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}-小" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum3BigSmall}" data-bet-num="小"/></td>


            <c:set var="lottery" value="${odds['单']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}-单" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum3SingleDouble}" data-bet-num="单"/></td>

            <c:set var="lottery" value="${odds['双']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}-双" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum3SingleDouble}" data-bet-num="双"/></td>


            <td></td><td></td><td></td><td></td>
        </tr>
        <tr>
            <td colspan="2"><strong>${title}尾数</strong></td>

            <c:set var="lottery" value="${odds['尾大']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}尾数-尾大" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum3MantissaBigSmall}" data-bet-num="尾大"/></td>

            <c:set var="lottery" value="${odds['尾小']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}尾数-尾小" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum3MantissaBigSmall}" data-bet-num="尾小"/></td>

            <td></td><td></td><td></td><td></td>

            <c:set var="lottery" value="${odds['尾质']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}尾数-尾质" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum3MantissaPrimeCombined}" data-bet-num="尾质"/></td>

            <c:set var="lottery" value="${odds['尾合']}"/>
            <c:set var="odd" value="${lottery.odd}"/>
            <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl">${odd}</strong></td>
            <td data-num="${lottery.betNum}"><input type="text" class="table-txt" data-name="${title}尾数-尾合" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Sum3MantissaPrimeCombined}" data-bet-num="尾合"/></td>

        </tr>
        </tbody>
    </table>
</c:if>
