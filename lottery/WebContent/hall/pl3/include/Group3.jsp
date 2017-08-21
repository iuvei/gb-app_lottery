<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<%-- 组选三 --%>
<div class="lot-content clearfix">
    <div class="fl main-left">
        <div class="hd rehd clearfix">
            <div class="fl">快捷金额：<input type="text" class="txt"></div>
            <%@ include file="../../common/ShortcutkeyButton.jsp" %>
            <input type="hidden" class="hiddenCode" data-code="pl3_group3"/>
        </div>

        <div class="table-common">
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
    curl(['site/hall/pl3/Group3'], function(PlayWay) {
        page.playWay = new PlayWay();
    });
</script>