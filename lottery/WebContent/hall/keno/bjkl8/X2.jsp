<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<div class="lot-content clearfix">
    <div class="fl main-left">
        <div class="table-common">
            <c:set var="odds" value="${oddMap['keno_selection']}"/>
            <c:set var="playGroupName" value="选二"/>
            <c:set var="playWay" value="${kenoSelectionTwo}"/>

            <table width="100%" border="1">
                <thead>
                <tr>
                    <th colspan="16"><strong id="numsLength"  numsLength="2"  >选2</strong>(
                        <c:set var="lottery" value="${odds['选二']}"/>
                        <c:set var="odd" value="${lottery.odd}"/>
                        中2@<span class="red pl" data-plid="8572">${odd}</span>)
                    </th>
                </tr>
                <tr>
                    <th width="36">号码</th>
                    <th>勾选</th>
                    <th width="36">号码</th>
                    <th>勾选</th>
                    <th width="36">号码</th>
                    <th>勾选</th>
                    <th width="36">号码</th>
                    <th>勾选</th>
                    <th width="36">号码</th>
                    <th>勾选</th>
                    <th width="36">号码</th>
                    <th>勾选</th>
                    <th width="36">号码</th>
                    <th>勾选</th>
                    <th width="36">号码</th>
                    <th>勾选</th>
                </tr>
                </thead>
                <c:set var="lottery" value="${odds['选二']}"/>
                <c:set var="odd" value="${lottery.odd}"/>
                <%@ include file="xx/XTable.jsp" %>

                <tfoot>
                <tr>
                    <td colspan="18">
                        下注金额：<input type="text" class="txt" id="inputMoney">
                    </td>
                </tr>
                </tfoot>
            </table>
        </div>

        <div class="btns">
            <button type="submit" class="btn btn-1">提交</button>
            <button class="btn btn-2">重设</button>
        </div>
    </div>


</div>

<input type="hidden" data-plid="8572" id="pl5"></input>
<input type="hidden" data-plid="8573" id="pl4"></input>
<input type="hidden" data-plid="8574" id="pl3"></input>

<script type="text/javascript">
    curl(['site/hall/keno/bjkl8/PlayWay'], function (PlayWay) {
        page.playWay = new PlayWay();
    });
</script>
