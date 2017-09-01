<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<c:if test="${fn:length(odds) == 0}">
    <li class="init-tip">暂无数据</li>
</c:if>
<c:if test="${fn:length(odds) > 0}">
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
        <td data-num="${lottery.betNum}"><input type="text" class="table-txt num0" data-name="跨度-0" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Span}" data-bet-num="0"/></td>

        <c:set var="lottery" value="${odds['1']}"/>
        <c:set var="odd" value="${lottery.odd}"/>
        <td data-num="${lottery.betNum}" class="pointer"><strong>1</strong></td>
        <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl num1">${odd}</strong></td>
        <td data-num="${lottery.betNum}"><input type="text" class="table-txt num1" data-name="跨度-1" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Span}" data-bet-num="1"/></td>

        <c:set var="lottery" value="${odds['2']}"/>
        <c:set var="odd" value="${lottery.odd}"/>
        <td data-num="${lottery.betNum}" class="pointer"><strong>2</strong></td>
        <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl num2">${odd}</strong></td>
        <td data-num="${lottery.betNum}"><input type="text" class="table-txt num2" data-name="跨度-2" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Span}" data-bet-num="2"/></td>

        <c:set var="lottery" value="${odds['3']}"/>
        <c:set var="odd" value="${lottery.odd}"/>
        <td data-num="${lottery.betNum}" class="pointer"><strong>3</strong></td>
        <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl num3">${odd}</strong></td>
        <td data-num="${lottery.betNum}"><input type="text" class="table-txt num3" data-name="跨度-3" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Span}" data-bet-num="3"/></td>

        <c:set var="lottery" value="${odds['4']}"/>
        <c:set var="odd" value="${lottery.odd}"/>
        <td data-num="${lottery.betNum}" class="pointer"><strong>4</strong></td>
        <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl num4">${odd}</strong></td>
        <td data-num="${lottery.betNum}"><input type="text" class="table-txt num4" data-name="跨度-4" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Span}" data-bet-num="4"/></td>
    </tr>
    <tr>
        <c:set var="lottery" value="${odds['5']}"/>
        <c:set var="odd" value="${lottery.odd}"/>
        <td data-num="${lottery.betNum}" class="pointer"><strong>5</strong></td>
        <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl num5">${odd}</strong></td>
        <td data-num="${lottery.betNum}"><input type="text" class="table-txt num5" data-name="跨度-5" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Span}" data-bet-num="5"/></td>

        <c:set var="lottery" value="${odds['6']}"/>
        <c:set var="odd" value="${lottery.odd}"/>
        <td data-num="${lottery.betNum}" class="pointer"><strong>6</strong></td>
        <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl num6">${odd}</strong></td>
        <td data-num="${lottery.betNum}"><input type="text" class="table-txt num6" data-name="跨度-6" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Span}" data-bet-num="6"/></td>

        <c:set var="lottery" value="${odds['7']}"/>
        <c:set var="odd" value="${lottery.odd}"/>
        <td data-num="${lottery.betNum}" class="pointer"><strong>7</strong></td>
        <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl num7">${odd}</strong></td>
        <td data-num="${lottery.betNum}"><input type="text" class="table-txt num7" data-name="跨度-7" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Span}" data-bet-num="7"/></td>

        <c:set var="lottery" value="${odds['8']}"/>
        <c:set var="odd" value="${lottery.odd}"/>
        <td data-num="${lottery.betNum}" class="pointer"><strong>8</strong></td>
        <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl num8">${odd}</strong></td>
        <td data-num="${lottery.betNum}"><input type="text" class="table-txt num8" data-name="跨度-8" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Span}" data-bet-num="8"/></td>

        <c:set var="lottery" value="${odds['9']}"/>
        <c:set var="odd" value="${lottery.odd}"/>
        <td data-num="${lottery.betNum}" class="pointer"><strong>9</strong></td>
        <td data-num="${lottery.betNum}" class="pointer"><strong class="color-red pl num9">${odd}</strong></td>
        <td data-num="${lottery.betNum}"><input type="text" class="table-txt num9" data-name="跨度-9" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3Span}" data-bet-num="9"/></td>

    </tr>
    </tbody>
</table>
</c:if>
