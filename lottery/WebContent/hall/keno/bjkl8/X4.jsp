<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<div class="lot-content clearfix">
    <div class="fl main-left" style="width:auto; min-width: 760px; margin-left:75px;">
        <div class="hd clearfix rehd tzgz" id="toptouzhu">
            <%@ include file="../../common/ShortMoney.jsp" %>
        </div>
        <div class="table-common">
            <c:set var="odds" value="${oddMap['keno_selection']}"/>
            <c:set var="playGroupName" value="选四"/>
            <c:set var="playWay" value="${kenoSelectionFour}"/>

            <table width="100%" border="1">
                <thead>
                <tr>
                    <th colspan="8"><strong id="numsLength"  numsLength="4"  >选4</strong>(
                        <c:set var="lottery" value="${odds['选四-中4']}"/>
                        <c:set var="odd" value="${lottery.odd}"/>
                        中4@
                        <span class="red pl" data-plid="8572">${odd}</span>
                        <c:set var="lottery" value="${odds['选四-中3']}"/>
                        <c:set var="odd" value="${lottery.odd}"/>
                        中3@<span class="red pl" data-plid="8574">${odd}</span>
                        <c:set var="lottery" value="${odds['选四-中2']}"/>
                        <c:set var="odd" value="${lottery.odd}"/>
                        中2@<span class="red pl" data-plid="8572">${odd}</span>)
                    </th>
                </tr>
                </thead>
                <c:set var="lottery" value="${odds['选四-中4']}"/>
                <c:set var="odd" value="${lottery.odd}"/>
                <%@ include file="xx/XTable.jsp" %>
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