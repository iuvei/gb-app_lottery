<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<c:if test="${fn:length(odds) == 0}">
    <li class="init-tip">暂无数据</li>
</c:if>
<c:if test="${fn:length(odds) > 0}">
<table width="100%" border="1" class="num">
    <thead>
    <tr>
        <c:forEach items="${odds}" var="entry">
            <c:set var="lottery" value="${entry.value}"/>
            <input type="hidden" class="group3Odd_${entry.key}" data-name="组选三" data-odd="${lottery.odd}" data-num="${lottery.betNum}" data-bet-code="${lottery.betCode}" data-play="${pl3GroupThree}"/>
        </c:forEach>
        <th colspan="10">组选三@<span class="pl red group3Odd"></span>(请选择5个及以上号码)</th>
    </tr>
    <tr>
        <th width="50">号码</th>
        <th width="50">选择</th>
        <th width="50">号码</th>
        <th width="50">选择</th>
        <th width="50">号码</th>
        <th width="50">选择</th>
        <th width="50">号码</th>
        <th width="50">选择</th>
        <th width="50">号码</th>
        <th width="50">选择</th>
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
    </tr>
    <tr>
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
