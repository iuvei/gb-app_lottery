<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<c:if test="${fn:length(odds) == 0}">
    <li class="init-tip">暂无数据</li>
</c:if>
<c:if test="${fn:length(odds) > 0}">
<table width="100%" border="1" class="num">
    <thead>
    <tr>
        <c:set var="lottery" value="${odds[title]}"/>
        <c:set var="odd" value="${lottery.odd}"/>
        <input type="hidden" class="lottery" data-name="${title}定位" data-odd="${odd}" data-bet-code="${lottery.betCode}" data-play="${pl3ThreeDigital}"/>
        <th colspan="21">${title}定位（中3@<span class="pl red">${odd}</span>)</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${places}" var="place">
        <tr data-name="${place}">
            <td class="pointer">${place}位</td>
            <td class="pointer"><strong>0</strong></td>
            <td><input type="checkbox" class="table-checkbox" data-name="0"/></td>
            <td class="pointer"><strong>1</strong></td>
            <td><input type="checkbox" class="table-checkbox" data-name="1"/></td>
            <td class="pointer"><strong>2</strong></td>
            <td><input type="checkbox" class="table-checkbox" data-name="2"/></td>
            <td class="pointer"><strong>3</strong></td>
            <td><input type="checkbox" class="table-checkbox" data-name="3"/></td>
            <td class="pointer"><strong>4</strong></td>
            <td><input type="checkbox" class="table-checkbox" data-name="4"/></td>
            <td class="pointer"><strong>5</strong></td>
            <td><input type="checkbox" class="table-checkbox" data-name="5"/></td>
            <td class="pointer"><strong>6</strong></td>
            <td><input type="checkbox" class="table-checkbox" data-name="6"/></td>
            <td class="pointer"><strong>7</strong></td>
            <td><input type="checkbox" class="table-checkbox" data-name="7"/></td>
            <td class="pointer"><strong>8</strong></td>
            <td><input type="checkbox" class="table-checkbox" data-name="8"/></td>
            <td class="pointer"><strong>9</strong></td>
            <td><input type="checkbox" class="table-checkbox" data-name="9"/></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</c:if>
