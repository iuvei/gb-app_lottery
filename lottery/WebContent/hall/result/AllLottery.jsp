<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<div class="Playmethod">
    <ul>
        <li>
            <p class="kuaiqian">
                <style>.Single .layout .Playmethod ul li p.kuaiqian span {
                    width: 84px;
                    height: 25px;
                    line-height: 25px;
                }</style>
                <c:forEach var="lot" items="${lotterys}" varStatus="vs">
                    <c:if test="${lot.value.status=='normal'}">
                        <span class="lottery-code-span ${lot.value.code==code?'acti':''}"  id="lottery_code_${lot.value.code}">
                            <a href="javascript:void(0)" onclick="loadLotteryResult('${lot.value.type}','${lot.value.code}')">${dicts.lottery.lottery[lot.value.code]}</a>
                        </span>
                    </c:if>
                </c:forEach>
                <input type="hidden" name="search.code" value="${code}">
                <input type="hidden" name="search.type" value="${command.search.type}">
            </p>
        </li>
    </ul>
</div>

<div class="lot-content clearfix" id="search-list-container">
    <c:if test="${type eq 'ssc'}">
        <%@include file="LotteryResult_ssc.jsp"%>
    </c:if>
    <c:if test="${type eq 'pk10'}">
        <%@include file="LotteryResult_pk10.jsp"%>
    </c:if>
    <c:if test="${type eq 'k3'}">
        <%@include file="LotteryResult_k3.jsp"%>
    </c:if>
    <c:if test="${type eq 'lhc'}">
        <%@include file="LotteryResult_lhc.jsp"%>
    </c:if>
</div>
<script type="text/javascript">
    function loadLotteryResult(type,code) {
        $.ajax({
            type: "post",
            url: root + '/lotteryResultHistory/queryLotteryResultByCode.html?search.code='+code+"&search.type="+type,
            timeout: 60000,
            success: function (data) {
                $("#search-list-container").html(data);
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
            },
            beforeSend: function () {
                parent.showLoading();

            },
            complete: function () {
                parent.hideLoading();
                $("[name='search.code']").val(code);
                $("[name='search.type']").val(type);
                $(".lottery-code-span").removeClass("acti");
                $("#lottery_code_"+code).addClass("acti");
            }
        });
    }
</script>
