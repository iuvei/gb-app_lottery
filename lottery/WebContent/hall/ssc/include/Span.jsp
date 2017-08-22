<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<%--@elvariable id="i" type="so.wwb.gamebox.model.company.lottery.po.SiteLotteryOdd"--%>
<%-- 一字组合 --%>
<div class="lot-content clearfix">
    <input type="hidden" value="${code}" id="lotteryCode">
    <div class="fl main-left">
        <div class="hd clearfix">
            <div class="fl">快捷金额：<input type="text" class="txt"></div>
            <%@ include file="../../common/ShortcutkeyButton.jsp" %>
            <div class="fr">
                <div class="T-tab comb-type clearfix" style="margin-top: 5px; ">
                    <a href="javascript:void(0)" data-code="span_first_three" class="active">前三跨度</a>
                    <a href="javascript:void(0)" data-code="span_in_three">中三跨度</a>
                    <a href="javascript:void(0)" data-code="span_after_three">后三跨度</a>
                </div>
            </div>
        </div>
        <div class="table-common">
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
                <c:forEach var="i" begin="0" end="9" varStatus="o">
                    <c:if test="${o.index%5 == 0}"><tr></c:if>
                    <td data-num="${i}" class="pointer">
                        <strong>${i}</strong>
                    </td>
                    <td data-num="${i}" class="pointer">
                        <strong class="color-red pl odds num${i}"></strong>
                    </td>
                    <td data-num="${i}">
                        <input type="text" class="table-txt num${i}" data-name="前三跨度-${i}" data-odds="" data-bet-code="" data-play="${span}" data-bet-num="${i}" />
                    </td>
                    <c:if test="${o.index % 5 == 4}"></tr></c:if>
                </c:forEach>
                </tbody>
            </table>
        </div>
        <div class="btns">
            <button type="submit" class="btn btn-1">提交</button>
            <button class="btn btn-2">重设</button>
        </div>
        <%-- 往期结果 --%>
        <%@ include file="../include/include.result.jsp" %>
    </div>
    <%-- 两面长龙排行 --%>
    <%@ include file="../include/include.rank.jsp" %>
</div>
<script type="text/javascript">
    curl(['site/hall/ssc/Span'], function(PlayWay) {
        page.playWay = new PlayWay();
    });
</script>
