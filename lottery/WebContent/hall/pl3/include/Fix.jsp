<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<%-- 定位 --%>
<div class="lot-content clearfix">
    <div class="fl main-left">
        <div class="hd clearfix">
            <div class="fl">快捷金额：<input type="text" class="txt"></div>
            <div class="fr">
                <div class="T-tab fix-type clearfix" style="margin-top: 5px;">
                    <a href="javascript:void(0)" data-code="pl3_hundred">百定位</a>
                    <a href="javascript:void(0)" data-code="pl3_ten">十定位</a>
                    <a href="javascript:void(0)" data-code="pl3_one">个定位</a>
                    <a href="javascript:void(0)" data-code="pl3_hundred_ten">百十定位</a>
                    <a href="javascript:void(0)" data-code="pl3_hundred_one">百个定位</a>
                    <a href="javascript:void(0)" data-code="pl3_ten_one">十个定位</a>
                    <a href="javascript:void(0)" data-code="pl3_hundred_ten_one">百十个定位</a>
                </div>
            </div>
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
    curl(['site/hall/pl3/Fix'], function(PlayWay) {
        page.playWay = new PlayWay();
    });
</script>