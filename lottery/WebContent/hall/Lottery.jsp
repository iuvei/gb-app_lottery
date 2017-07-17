<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<%--@elvariable id="handicapList" type="java.util.List<so.wwb.gamebox.model.company.lottery.po.LotteryResult>"--%>
<!DOCTYPE html>
<html>
<head>
    <title>购彩大厅 | 所有彩票</title>
    <%@ include file="/include/include.head.jsp" %>
    <script src="${root}/message_<%=SessionManagerCommon.getLocale().toString()%>.js?v=${rcVersion}"></script>
    <style>
        body {overflow: hidden;}
        .list_ject ul li .Result p a {
            width: 50%;
        }
    </style>
</head>
<body style="overflow: auto">
<div class="list_ject" id="ssc_list">
    <ul>
        <c:set var="lotteryDicts" value="${dicts.lottery.lottery}"/>
        <c:forEach items="${handicapList}" varStatus="status" var="handicap">
            <li id="ssc_1">
                <div class="pro_name">
                    <div class="pict">
                        <img src="${resRoot}/themes/default/img/${handicap.code}.png" alt="">
                    </div>
                    <div class="text">
                        <b>${lotteryDicts[handicap.code]}</b>
                        <p>第<i data-name="number" id="expect${handicap.code}">${handicap.expect}</i>期销售中</p>
                    </div>
                </div>
                <div class="Time at">
                    <p data-name="tip">已开盘，欢迎投注。距下期还有:</p>
                    <div class="timer_wrap" data-code="${handicap.code}" data-name="time" data-time="${handicap.leftTime}">
                        <ol class="s">
                            <span class="sp1">0</span>
                            <span class="sp2">0</span>
                        </ol>
                        <ol class="f">
                            <span class="sp1">0</span>
                            <span class="sp2">0</span>
                        </ol>
                        <ol class="m">
                            <span class="sp1">0</span>
                            <span class="sp2">0</span>
                        </ol>
                    </div>
                    <c:if test="${!empty resultMap[handicap.code].openCode}">
                       <c:choose>
                           <c:when test="${handicap.type=='pk10'}">
                               <p class="p1 bj28" id="lastOpenData${handicap.code}" data-name="lastOpenData">
                                   <c:forEach var="i" items="${fn:split(resultMap[handicap.code].openCode,',')}">
                                       <i class="fang bg-${i}">${i}</i>
                                   </c:forEach>
                               </p>
                           </c:when>
                           <c:when test="${handicap.type=='lhc'}">
                               <p class="p1" id="lastOpenData${handicap.code}" data-name="lastOpenData">
                                   <c:forEach var="i" items="${fn:split(resultMap[handicap.code].openCode, ',')}" varStatus="vs" begin="0" end="5">
                                       <span class="cpq-cqssc cpq-num" num="${i}">${i}</span>
                                   </c:forEach>
                                   <i style="color:black; background: white;">+</i>
                                   <c:forEach var="i" items="${fn:split(resultMap[handicap.code].openCode, ',')}" varStatus="vs" begin="6" end="6">
                                       <span class="cpq-cqssc cpq-num" num="${i}">${i}</span>
                                   </c:forEach>
                               </p>
                           </c:when>
                           <c:otherwise>
                            <p class="p1" id="lastOpenData${handicap.code}" data-name="lastOpenData">
                                上期开奖
                               <c:forEach var="i" items="${fn:split(resultMap[handicap.code].openCode, ',')}">
                                   <i>${i}</i>
                               </c:forEach>
                            </p>
                           </c:otherwise>
                       </c:choose>
                    </c:if>
                    <c:if test="${empty resultMap[handicap.code].openCode}">
                        <p class="p1 lastOpenData" id="lastOpenData${handicap.code}" data-code="${handicap.code}" isOpening="true" data-name="lastOpenData">${resultMap[handicap.code].expect}期正在开奖中...</p>
                    </c:if>
                </div>
                <div class="Result">
                    <p>
                        <a href="javascript:void(0)" onclick="getPage('/lotteryResultHistory/toLotteryResultHistory.html?search.code=${handicap.code}')">历史开奖</a>
                            <%-- <a onclick="getZstPage('cqssc')" href="javascript:void(0)">开奖走势</a>--%>
                        <a href="javascript:void(0)" class="acti" onclick="getPage('/${handicap.type}/${handicap.code}/index.html')">立即投注</a>
                    </p>
                </div>
            </li>
        </c:forEach>
    </ul>
</div>
<script type="text/html" id="template_hklhc">
    {{each numArr as num index}}
        {{if index!=6}}
            <span class="cpq-cqssc cpq-num" num="{{num}}">{{num}}</span>
        {{else}}
            <i style="color:black; background: white;">+</i>
            <span class="cpq-cqssc cpq-num" num="{{num}}">{{num}}</span>
        {{/if}}
    {{/each}}
</script>
<script type="text/html" id="template_pk10">
    {{each numArr as num index}}
        <i class="fang bg-{{num}}">{{num}}</i>
    {{/each}}
</script>
<script type="text/html" id="template_result">
    {{each numArr as num index}}
        <i>{{num}}</i>
    {{/each}}
</script>
<%@ include file="/include/include.js.jsp" %>
<script src="${resRoot}/js/hall/Lottery.js?v=${rcVersion}"></script>
</body>
</html>