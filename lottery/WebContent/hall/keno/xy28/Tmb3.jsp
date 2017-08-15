<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<div class="lot-content clearfix">
    <div class="fl main-left">
        <div class="hd clearfix rehd tzgz" id="toptouzhu">
            <div class="fl refl">
                快捷金额：
                <input type="text" class="txt">
            </div>
            <div class="kjanniu">
                <a href="javascript:void(0)" class="img-50" data-num="50"></a>
                <a href="javascript:void(0)" class="img-100" data-num="100"></a>
                <a href="javascript:void(0)" class="img-500" data-num="500"></a>
                <a href="javascript:void(0)" class="img-1000" data-num="1000"></a>
                <a href="javascript:void(0)" class="img-5000" data-num="5000"></a>
                <a href="javascript:void(0)" class="img-10000" data-num="10000"></a>
            </div>
        </div>
        <div class="table-common">
            <table width="100%" border="1">
                <thead>
                <tr>
                    <th colspan="12">和值</th>
                </tr>
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
                </tr>
                </thead>
                <c:set var="odds" value="${oddMap['xy28_sum3']}"/>
                <c:set var="lottery" value="${odds['特码包三']}"/>
                <c:set var="odd" value="${lottery.odd}"/>

                <tbody>
                <c:forEach var="j" begin="0" end="6">
                    <tr>
                        <c:forEach var="i" begin="${j*4}" end="${j*4+3}">

                            <td style="cursor: pointer;"><span class="ball-28xyicon grayxy28">${i}</span></td>
                            <td style="cursor: pointer;" data-num="${i}"><strong class="color-red pl" data-plid="9350">${odd}</strong>
                            </td>
                            <td data-num="${i}">
                                <input type="text" class="table-txt"
                                       data-plid="9821"
                                       data-odds="${odd}" data-bet-code="${lottery.betCode}"
                                       data-play="${xy28Sum3DigitalThree}"
                                       data-bet-num="特码包三" data-name="特码包三-${i}"
                                ></td>
                        </c:forEach>
                    </tr>
                </c:forEach>
                </tbody>
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
    curl(['site/hall/qt/xy28/PlayWay'], function(PlayWay) {
        page.playWay = new PlayWay();
    });
</script>