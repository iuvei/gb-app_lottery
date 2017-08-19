<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<div class="lot-content clearfix">
    <div class="fl main-left">
        <div class="table-common">
            <c:set var="odds" value="${oddMap['keno_selection']}"/>
            <c:set var="playGroupName" value="选五"/>
            <c:set var="playWay" value="${kenoSelectionFive}"/>

            <table width="100%" border="1">
                <thead>
                <tr>
                    <th colspan="16"><strong id="numsLength"  numsLength="5"  >选5</strong>(
                        <c:set var="lottery" value="${odds['选五-中5']}"/>
                        <c:set var="odd" value="${lottery.odd}"/>
                        中5@<span class="red pl" data-plid="8572">${odd}</span>
                        <c:set var="lottery" value="${odds['选五-中4']}"/>
                        <c:set var="odd" value="${lottery.odd}"/>
                        中4@
                        <span class="red pl" data-plid="8572">${odd}</span>
                        <c:set var="lottery" value="${odds['选五-中3']}"/>
                        <c:set var="odd" value="${lottery.odd}"/>
                        中3@<span class="red pl" data-plid="8574">${odd}</span>)
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
                <c:set var="lottery" value="${odds['选五-中5']}"/>
                <c:set var="odd" value="${lottery.odd}"/>
                <%@ include file="xx/XTable.jsp" %>

                <tfoot>
                <tr>
                    <td colspan="18">
                        <div class="hd clearfix rehd tzgz" id="toptouzhu">
                            <div class="fl refl xzje">
                                下注金额：<input type="text" class="txt" id="inputMoney">
                            </div>
                            <div class="kjanniu">
                                <%@ include file="../../common/ShortcutkeyButton.jsp" %>
                            </div>
                        </div>
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

<input type="hidden" data-plid="8572" id="pl5"/>
<input type="hidden" data-plid="8573" id="pl4"/>
<input type="hidden" data-plid="8574" id="pl3"/>

<script type="text/javascript">
    curl(['site/hall/keno/bjkl8/PlayWay'], function (PlayWay) {
        page.playWay = new PlayWay();
    });
</script>
