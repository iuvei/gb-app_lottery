<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<%--@elvariable id="odds" type="Map<java.lang.String,so.wwb.gamebox.model.company.lottery.po.SiteLotteryOdd>"--%>
<%--@elvariable id="lottery" type="so.wwb.gamebox.model.company.lottery.po.SiteLotteryOdd"--%>
<tbody>
    <c:set var="count" value="1"/>
    <c:forEach var="i" begin="1" end="49">
        <c:if test="${i%5==1}">
            <c:set var="num" value="0"/>
            <tr>
        </c:if>
        <c:set var="betNum" value="${num*10 + count}"/>
        <c:set var="lottery" value="${odds[betNum.toString()]}"/>
        <c:if test="${betNum<10}">
            <c:set var="betNum" value="0${betNum}"/>
            <c:set var="lottery" value="${odds[betNum.toString()]}"/>
        </c:if>

        <c:set var="odd" value="${lottery.odd}"/>
        <td data-num="${betNum}" style="cursor: pointer;">
            <span class="ball-icon ball-${betNum}"></span>
        </td>
        <td data-num="${betNum}" style="cursor: pointer;">
            <strong class="color-red pl odds1">${odd}</strong>
        </td>
        <td data-num="${betNum}">
                <input type="text" class="table-txt" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${digitalPlay}" data-bet-num="${betNum}" data-name="${playGroupName}-${betNum}"/>
        </td>
        <c:set var="num" value="${num+1}"/>
        <c:if test="${(i%5 == 0)}">
            <c:set var="count" value="${count+1}"/>
            </tr>
        </c:if>
        <c:if test="${i==49}">
            <td style="cursor: pointer;">&nbsp;</td>
            <td style="cursor: pointer;">&nbsp;</td>
            <td style="cursor: pointer;">&nbsp;</td>
            </tr>
        </c:if>
    </c:forEach>
</tbody>

