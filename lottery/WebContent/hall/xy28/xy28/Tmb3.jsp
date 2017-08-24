<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<div class="lot-content clearfix">
    <div class="fl main-left">

        <div class="table-common">
            <table width="100%" border="1">
                <thead>

                <tr>
                    <th width="47">号码</th>
                    <th width="56">赔率</th>
                    <th>勾选</th>
                    <th width="47">号码</th>
                    <th width="56">赔率</th>
                    <th>勾选</th>
                    <th width="47">号码</th>
                    <th width="56">赔率</th>
                    <th>勾选</th>
                    <th width="47">号码</th>
                    <th width="56">赔率</th>
                    <th>勾选</th>
                </tr>
                </thead>
                <c:set var="odds" value="${oddMap['xy28_sum3']}"/>
                <c:set var="lottery" value="${odds['特码包三']}"/>
                <c:set var="odd" value="${lottery.odd}"/>

                <tbody>
                <c:forEach var="j" begin="0" end="6">
                    <tr>
                        <c:forEach var="i" begin="${j*4}" end="${j*4+3}">

                            <td data-num="${i}"  style="cursor: pointer;"><span class="ball-28xyicon xy28-list">${i}</span></td>
                            <td style="cursor: pointer;" data-num="${i}"><strong class="color-red pl" data-plid="9350">${odd}</strong>
                            </td>
                            <td data-num="${i}">
                                <input type="checkbox" class="table-txt"
                                       data-plid="9821"
                                       data-odds="${odd}" data-bet-code="${lottery.betCode}"
                                       data-play="${xy28Sum3DigitalThree}"
                                       data-bet-num="${i}" data-name="特码包三-${i}"
                                ></td>
                        </c:forEach>
                    </tr>
                </c:forEach>
                </tbody>
                <tfoot>
                <tr>
                    <td colspan="18">
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
    <div class="fr main-right cl-10 p-r-0">

    </div>
</div>
<script type="text/javascript">
    curl(['site/hall/keno/xy28/tmb3/PlayWay'], function(PlayWay) {
        page.playWay = new PlayWay();
    });
</script>
<script>
    $(".xy28-list").each(function () {
        var val = $(this).text();
        var map={
            0:"grayxy28",
            1:"greenxy28",
            2:"bluexy28",
            3:"ball-28xy3",
            4:"greenxy28",
            5:"bluexy28",
            6:"ball-28xy3",
            7:"greenxy28",
            8:"bluexy28",
            9:"ball-28xy3",
            10:"greenxy28",
            11:"bluexy28",
            12:"ball-28xy3",
            13:"grayxy28",
            14:"grayxy28",
            15:"ball-28xy3",
            16:"greenxy28",
            17:"bluexy28",
            18:"ball-28xy3",
            19:"greenxy28",
            20:"bluexy28",
            21:"ball-28xy3",
            22:"greenxy28",
            23:"bluexy28",
            24:"ball-28xy3",
            25:"greenxy28",
            26:"bluexy28",
            27:"grayxy28"
        };
        $(this).addClass(map[val]);
    });
</script>