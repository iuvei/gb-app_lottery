<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<c:if test="${fn:length(odds) == 0}">
    <li class="init-tip">暂无数据</li>
</c:if>
<c:if test="${fn:length(odds) > 0}">
<c:set var="threeSame" value="${odds['三同']}"/>
<c:set var="threeGroup3" value="${odds['组三']}"/>
<c:set var="threeGroup6" value="${odds['组六']}"/>
<c:set var="threeSameOdd" value="${threeSame.odd}"/>
<c:set var="threeGroup3Odd" value="${threeGroup3.odd}"/>
<c:set var="threeGroup6Odd" value="${threeGroup6.odd}"/>
<input type="hidden" class="threeSame" data-name="三字组合之三同" data-odd="${threeSameOdd}" data-bet-code="${threeSame.betCode}" data-play="${pl3ThreeCombination}"/>
<input type="hidden" class="threeGroup3" data-name="三字组合之组三" data-odd="${threeGroup3Odd}" data-bet-code="${threeGroup3.betCode}" data-play="${pl3ThreeCombination}"/>
<input type="hidden" class="threeGroup6" data-name="三字组合之组六" data-odd="${threeGroup6Odd}" data-bet-code="${threeGroup6.betCode}" data-play="${pl3ThreeCombination}"/>
<table width="100%" border="1" class="num">
    <thead>
    <tr>
        <th colspan="20">三字组合（三同@<span class="pl red">${threeSameOdd}</span>组三@<span class="pl red">${threeGroup3Odd}</span>组六@<span class="pl red">${threeGroup6Odd}</span>)</th>
    </tr>
    <tr>
        <th colspan="20">第一个投注码</th>
    </tr>
    </thead>
    <tbody>
        <tr>
            <td class="pointer"><strong>0</strong></td>
            <td><input type="checkbox" class="table-checkbox" data-num="0"/></td>
            <td class="pointer"><strong>1</strong></td>
            <td><input type="checkbox" class="table-checkbox" data-num="1"/></td>
            <td class="pointer"><strong>2</strong></td>
            <td><input type="checkbox" class="table-checkbox" data-num="2"/></td>
            <td class="pointer"><strong>3</strong></td>
            <td><input type="checkbox" class="table-checkbox" data-num="3"/></td>
            <td class="pointer"><strong>4</strong></td>
            <td><input type="checkbox" class="table-checkbox" data-num="4"/></td>
            <td class="pointer"><strong>5</strong></td>
            <td><input type="checkbox" class="table-checkbox" data-num="5"/></td>
            <td class="pointer"><strong>6</strong></td>
            <td><input type="checkbox" class="table-checkbox" data-num="6"/></td>
            <td class="pointer"><strong>7</strong></td>
            <td><input type="checkbox" class="table-checkbox" data-num="7"/></td>
            <td class="pointer"><strong>8</strong></td>
            <td><input type="checkbox" class="table-checkbox" data-num="8"/></td>
            <td class="pointer"><strong>9</strong></td>
            <td><input type="checkbox" class="table-checkbox" data-num="9"/></td>
        </tr>
    </tbody>
</table>
<table width="100%" border="1" class="num">
    <thead>
    <tr>
        <th colspan="20">第二个投注码</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td class="pointer"><strong>0</strong></td>
        <td><input type="checkbox" class="table-checkbox" data-num="0"/></td>
        <td class="pointer"><strong>1</strong></td>
        <td><input type="checkbox" class="table-checkbox" data-num="1"/></td>
        <td class="pointer"><strong>2</strong></td>
        <td><input type="checkbox" class="table-checkbox" data-num="2"/></td>
        <td class="pointer"><strong>3</strong></td>
        <td><input type="checkbox" class="table-checkbox" data-num="3"/></td>
        <td class="pointer"><strong>4</strong></td>
        <td><input type="checkbox" class="table-checkbox" data-num="4"/></td>
        <td class="pointer"><strong>5</strong></td>
        <td><input type="checkbox" class="table-checkbox" data-num="5"/></td>
        <td class="pointer"><strong>6</strong></td>
        <td><input type="checkbox" class="table-checkbox" data-num="6"/></td>
        <td class="pointer"><strong>7</strong></td>
        <td><input type="checkbox" class="table-checkbox" data-num="7"/></td>
        <td class="pointer"><strong>8</strong></td>
        <td><input type="checkbox" class="table-checkbox" data-num="8"/></td>
        <td class="pointer"><strong>9</strong></td>
        <td><input type="checkbox" class="table-checkbox" data-num="9"/></td>
    </tr>
    </tbody>
</table>
<table width="100%" border="1" class="num">
    <thead>
    <tr>
        <th colspan="20">第三个投注码</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td class="pointer"><strong>0</strong></td>
        <td><input type="checkbox" class="table-checkbox" data-num="0"/></td>
        <td class="pointer"><strong>1</strong></td>
        <td><input type="checkbox" class="table-checkbox" data-num="1"/></td>
        <td class="pointer"><strong>2</strong></td>
        <td><input type="checkbox" class="table-checkbox" data-num="2"/></td>
        <td class="pointer"><strong>3</strong></td>
        <td><input type="checkbox" class="table-checkbox" data-num="3"/></td>
        <td class="pointer"><strong>4</strong></td>
        <td><input type="checkbox" class="table-checkbox" data-num="4"/></td>
        <td class="pointer"><strong>5</strong></td>
        <td><input type="checkbox" class="table-checkbox" data-num="5"/></td>
        <td class="pointer"><strong>6</strong></td>
        <td><input type="checkbox" class="table-checkbox" data-num="6"/></td>
        <td class="pointer"><strong>7</strong></td>
        <td><input type="checkbox" class="table-checkbox" data-num="7"/></td>
        <td class="pointer"><strong>8</strong></td>
        <td><input type="checkbox" class="table-checkbox" data-num="8"/></td>
        <td class="pointer"><strong>9</strong></td>
        <td><input type="checkbox" class="table-checkbox" data-num="9"/></td>
    </tr>
    </tbody>
</table>
</c:if>