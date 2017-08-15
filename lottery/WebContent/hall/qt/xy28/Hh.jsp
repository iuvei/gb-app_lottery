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
                    <th colspan="12">混合</th>
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

                <tbody>
                <tr>
                    <c:set var="odds" value="${oddMap['xy28_sum3']}"/>
                    <c:set var="lottery" value="${odds['大']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td style="cursor: pointer;">大</td>
                    <td style="cursor: pointer;" data-num="${lottery.betNum}"><strong class="color-red pl" data-plid="14393">${odd}</strong></td>
                    <td data-num="${lottery.betNum}"><input type="text" class="table-txt"
                               data-odds="${odd}" data-bet-code="${lottery.betCode}"
                               data-play="${xy28Sum3BigSmall}" data-bet-num="${lottery.betNum}"
                               data-name="${lottery.betNum}" data-plid="10002" ></td>
                    <c:set var="lottery" value="${odds['小']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td style="cursor: pointer;">小</td>
                    <td  data-num="${lottery.betNum}"  style="cursor: pointer;"><strong class="color-red pl" data-plid="14394">${odd}</strong></td>
                    <td  data-num="${lottery.betNum}" ><input type="text" class="table-txt"
                               data-odds="${odd}" data-bet-code="${lottery.betCode}"
                               data-play="${xy28Sum3BigSmall}" data-bet-num="${lottery.betNum}"
                               data-name="${lottery.betNum}" data-plid="10002" ></td>

                    <c:set var="lottery" value="${odds['红波']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td style="cursor: pointer;"><font color="red">红波</font></td>
                    <td  data-num="${lottery.betNum}"  style="cursor: pointer;"><strong class="color-red pl" data-plid="14403">${odd}</strong></td>
                    <td  data-num="${lottery.betNum}" ><input type="text" class="table-txt"
                               data-odds="${odd}" data-bet-code="${lottery.betCode}"
                               data-play="${xy28Sum3Colour}" data-bet-num="${lottery.betNum}"
                               data-name="${lottery.betNum}" data-plid="10002"></td>
                    <c:set var="lottery" value="${odds['豹子']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td style="cursor: pointer;">豹子</td>
                    <td  data-num="${lottery.betNum}"  style="cursor: pointer;"><strong class="color-red pl" data-plid="14403">${odd}</strong></td>
                    <td  data-num="${lottery.betNum}" ><input type="text" class="table-txt"
                               data-odds="${odd}" data-bet-code="${lottery.betCode}"
                               data-play="${xy28ThreeSame}" data-bet-num="${lottery.betNum}"
                               data-name="${lottery.betNum}" data-plid="10002"></td>
                </tr>

                <tr>
                    <c:set var="lottery" value="${odds['单']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td style="cursor: pointer;">单</td>
                    <td  data-num="${lottery.betNum}"  style="cursor: pointer;"><strong class="color-red pl" data-plid="14403">${odd}</strong></td>
                    <td  data-num="${lottery.betNum}" ><input type="text" class="table-txt"
                               data-odds="${odd}" data-bet-code="${lottery.betCode}"
                               data-play="${xy28Sum3SingleDouble}" data-bet-num="${lottery.betNum}"
                               data-name="${lottery.betNum}" data-plid="10002"></td>
                    <c:set var="lottery" value="${odds['双']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td style="cursor: pointer;">双</td>
                    <td  data-num="${lottery.betNum}"  style="cursor: pointer;"><strong class="color-red pl" data-plid="14403">${odd}</strong></td>
                    <td  data-num="${lottery.betNum}" ><input type="text" class="table-txt"
                               data-odds="${odd}" data-bet-code="${lottery.betCode}"
                               data-play="${xy28Sum3SingleDouble}" data-bet-num="${lottery.betNum}"
                               data-name="${lottery.betNum}" data-plid="10002"></td>
                    <c:set var="lottery" value="${odds['绿波']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td style="cursor: pointer;"><font color="green">绿波</font></td>
                    <td  data-num="${lottery.betNum}"  style="cursor: pointer;"><strong class="color-red pl" data-plid="14403">${odd}</strong></td>
                    <td  data-num="${lottery.betNum}" ><input type="text" class="table-txt"
                               data-odds="${odd}" data-bet-code="${lottery.betCode}"
                               data-play="${xy28Sum3Colour}" data-bet-num="${lottery.betNum}"
                               data-name="${lottery.betNum}" data-plid="10002"></td>

                    <td style="cursor: pointer;"></td>
                    <td style="cursor: pointer;"></td>
                    <td style="cursor: pointer;"></td>
                </tr>

                <tr>
                    <c:set var="lottery" value="${odds['大单']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td style="cursor: pointer;">大单</td>
                    <td  data-num="${lottery.betNum}"  style="cursor: pointer;"><strong class="color-red pl" data-plid="14403">${odd}</strong></td>
                    <td  data-num="${lottery.betNum}" ><input type="text" class="table-txt"
                               data-odds="${odd}" data-bet-code="${lottery.betCode}"
                               data-play="${xy28Sum3Half}" data-bet-num="${lottery.betNum}"
                               data-name="${lottery.betNum}" data-plid="10002"></td>

                    <c:set var="lottery" value="${odds['小单']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td style="cursor: pointer;">小单</td>
                    <td  data-num="${lottery.betNum}"  style="cursor: pointer;"><strong class="color-red pl" data-plid="14403">${odd}</strong></td>
                    <td  data-num="${lottery.betNum}" ><input type="text" class="table-txt"
                               data-odds="${odd}" data-bet-code="${lottery.betCode}"
                               data-play="${xy28Sum3Half}" data-bet-num="${lottery.betNum}"
                               data-name="${lottery.betNum}" data-plid="10002"></td>

                    <c:set var="lottery" value="${odds['蓝波']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td style="cursor: pointer;"><font color="blue">蓝波</font></td>
                    <td  data-num="${lottery.betNum}"  style="cursor: pointer;"><strong class="color-red pl" data-plid="14403">${odd}</strong></td>
                    <td  data-num="${lottery.betNum}" ><input type="text" class="table-txt"
                               data-odds="${odd}" data-bet-code="${lottery.betCode}"
                               data-play="${xy28Sum3Colour}" data-bet-num="${lottery.betNum}"
                               data-name="${lottery.betNum}" data-plid="10002"></td>

                    <td style="cursor: pointer;"></td>
                    <td style="cursor: pointer;"></td>
                    <td style="cursor: pointer;"></td>
                </tr>

                <tr>
                    <c:set var="lottery" value="${odds['大双']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td style="cursor: pointer;">大双</td>
                    <td  data-num="${lottery.betNum}"  style="cursor: pointer;"><strong class="color-red pl" data-plid="14403">${odd}</strong></td>
                    <td  data-num="${lottery.betNum}" ><input type="text" class="table-txt"
                               data-odds="${odd}" data-bet-code="${lottery.betCode}"
                               data-play="${xy28Sum3Half}" data-bet-num="${lottery.betNum}"
                               data-name="${lottery.betNum}" data-plid="10002"></td>
                    <c:set var="lottery" value="${odds['小双']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td style="cursor: pointer;">小双</td>
                    <td  data-num="${lottery.betNum}"  style="cursor: pointer;"><strong class="color-red pl" data-plid="14403">${odd}</strong></td>
                    <td  data-num="${lottery.betNum}" ><input type="text" class="table-txt"
                               data-odds="${odd}" data-bet-code="${lottery.betCode}"
                               data-play="${xy28Sum3Half}" data-bet-num="${lottery.betNum}"
                               data-name="${lottery.betNum}" data-plid="10002"></td>

                    <td style="cursor: pointer;"></td>
                    <td style="cursor: pointer;"></td>
                    <td style="cursor: pointer;"></td>

                    <td style="cursor: pointer;"></td>
                    <td style="cursor: pointer;"></td>
                    <td style="cursor: pointer;"></td>
                </tr>

                <tr>
                    <c:set var="lottery" value="${odds['极大']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td style="cursor: pointer;">极大</td>
                    <td  data-num="${lottery.betNum}"  style="cursor: pointer;"><strong class="color-red pl" data-plid="14403">${odd}</strong></td>
                    <td  data-num="${lottery.betNum}" ><input type="text" class="table-txt"
                               data-odds="${odd}" data-bet-code="${lottery.betCode}"
                               data-play="${xy28Sum3Extreme}" data-bet-num="${lottery.betNum}"
                               data-name="${lottery.betNum}" data-plid="10002"></td>
                    <c:set var="lottery" value="${odds['极小']}"/>
                    <c:set var="odd" value="${lottery.odd}"/>
                    <td style="cursor: pointer;">极小</td>
                    <td  data-num="${lottery.betNum}"  style="cursor: pointer;"><strong class="color-red pl" data-plid="14403">${odd}</strong></td>
                    <td  data-num="${lottery.betNum}" ><input type="text" class="table-txt"
                               data-odds="${odd}" data-bet-code="${lottery.betCode}"
                               data-play="${xy28Sum3Extreme}" data-bet-num="${lottery.betNum}"
                               data-name="${lottery.betNum}" data-plid="10002"></td>

                    <td style="cursor: pointer;"></td>
                    <td style="cursor: pointer;"></td>
                    <td style="cursor: pointer;"></td>

                    <td style="cursor: pointer;"></td>
                    <td style="cursor: pointer;"></td>
                    <td style="cursor: pointer;"></td>
                </tr>

                </tbody>
            </table>
        </div>

        <div class="btns">
            <button type="submit" class="btn btn-1">提交</button>
            <button class="btn btn-2">重设</button>
        </div>


    </div>
    <div class="fr main-right cl-10 p-r-0">
        <div class="table-common table-border-color">

        </div>
    </div>
</div>

<script type="text/javascript">
    curl(['site/hall/qt/xy28/PlayWay'], function(PlayWay) {
        page.playWay = new PlayWay();
    });
</script>
</div>

</div>