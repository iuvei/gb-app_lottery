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
                    <th colspan="8"><strong id="numsLength"  numsLength="5">选5</strong>(
                        <c:set var="lottery" value="${odds['选五-中5']}"/>
                        <c:set var="odd" value="${lottery.odd}"/>
                        中5@<span class="red pl">${odd}</span>
                        <c:set var="lottery" value="${odds['选五-中4']}"/>
                        <c:set var="odd" value="${lottery.odd}"/>
                        中4@
                        <span class="red pl">${odd}</span>
                        <c:set var="lottery" value="${odds['选五-中3']}"/>
                        <c:set var="odd" value="${lottery.odd}"/>
                        中3@<span class="red pl">${odd}</span>)
                    </th>
                </tr>
                </thead>
                <c:set var="lottery" value="${odds['选五-中5']}"/>
                <c:set var="odd" value="${lottery.odd}"/>
                <%@ include file="xx/XTable.jsp" %>

                <tfoot>
                <tr>
                    <td colspan="8">
                        <div class="hd clearfix rehd tzgz" id="toptouzhu">
                                <%@ include file="../../common/ShortMoney.jsp" %>
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
　
<script type="text/javascript">
    curl(['site/hall/keno/bjkl8/PlayWay'], function (PlayWay) {
        page.playWay = new PlayWay();
    });
</script>
