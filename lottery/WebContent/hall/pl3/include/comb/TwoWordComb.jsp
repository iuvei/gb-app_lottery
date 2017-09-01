<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<c:if test="${fn:length(odds) == 0}">
    <li class="init-tip">暂无数据</li>
</c:if>
<c:if test="${fn:length(odds) > 0}">
<c:set var="twoSame" value="${odds['二同']}"/>
<c:set var="twoDiff" value="${odds['二不同']}"/>
<c:set var="twoSameOdd" value="${twoSame.odd}"/>
<c:set var="twoDiffOdd" value="${twoDiff.odd}"/>
<input type="hidden" class="twoSame" data-name="二字组合之二字相同" data-odd="${twoSameOdd}" data-bet-code="${twoSame.betCode}" data-play="${pl3TwoCombination}"/>
<input type="hidden" class="twoDiff" data-name="二字组合之二字不同" data-odd="${twoDiffOdd}" data-bet-code="${twoDiff.betCode}" data-play="${pl3TwoCombination}"/>
<table width="100%" border="1" class="num">
    <thead>
    <tr>
        <th colspan="20">二字组合（二字相同@<span class="pl red">${twoSameOdd}</span>二字不同@<span class="pl red">${twoDiffOdd}</span>)</th>
    </tr>
    <tr>
        <th colspan="20">第一个投注码</th>
    </tr>
    </thead>
    <tbody>
        <tr>
            <c:forEach var="i" begin="0" end="9" varStatus="o">
                <td class="pointer new-ball-st" data-num="${i}">
                    <strong class="pl">${i}</strong>
                </td>
            </c:forEach>
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
        <c:forEach var="i" begin="0" end="9" varStatus="o">
            <td class="pointer new-ball-st" data-num="${i}">
                <strong class="pl">${i}</strong>
            </td>
        </c:forEach>
    </tr>
    </tbody>
</table>
</c:if>
