<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>

<div class="lot-content clearfix">
    <div class="fl main-left">
        <div class="hd rehd clearfix">
            <%@ include file="../../common/ShortMoney.jsp" %>
        </div>
        <%@ include file="sum/Sum.jsp" %>
        <div class="btns">
            <button type="submit" class="btn btn-1">提交</button>
            <button class="btn btn-2">重设</button>
        </div>
        <div class="table-common game_tables" >
            <table class="head_table" id="rttt" style="width:100%">
                <tbody>
                <tr>
                    <th class="tab_one th_bg" data-position="tab_1">冠、亚军和 大小</th>
                    <th class="tab_two" data-position="tab_2">冠、亚军和</th>
                    <th class="tab_three" data-position="tab_3">冠亚军和单双</th>
                </tr>
                </tbody>
            </table>
            <table class="body_table" style="width: 100%;margin-top:0;">
                <tbody class="gydx" id="tab_1">
                    <c:forEach var="i" begin="0" end="5">
                        <tr class="ballqueue_result" id="rmTr${i}">
                            <c:forEach var="i" begin="1" end="35">
                                <td style="cursor: pointer;"></td>
                            </c:forEach>
                        </tr>
                    </c:forEach>
                </tbody>

                <tbody class="gyhz" id="tab_2">
                    <c:forEach var="i" begin="0" end="5">
                        <tr class="ballqueue_result" id="rm2Tr${i}">
                            <c:forEach var="i" begin="1" end="35">
                                <td style="cursor: pointer;"></td>
                            </c:forEach>
                        </tr>
                    </c:forEach>
                </tbody>

                <tbody class="gyds" id="tab_3">
                    <c:forEach var="i" begin="0" end="5">
                        <tr class="ballqueue_result" id="rm3Tr${i}">
                            <c:forEach var="i" begin="1" end="35">
                                <td style="cursor: pointer;"></td>
                            </c:forEach>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
    <div class="fr main-right main-right-xyft cl-10 lm_height">

    </div>
</div>
<script type="text/javascript">
    curl(['site/hall/pk10/xyft/PlayWay'], function (PlayWay) {
        page.playWay = new PlayWay();
    });
</script>
