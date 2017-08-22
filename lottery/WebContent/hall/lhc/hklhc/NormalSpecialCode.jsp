<%--@elvariable id="odds" type="Map<java.lang.String,so.wwb.gamebox.model.company.lottery.po.SiteLotteryOdd>"--%>
<%--@elvariable id="lottery" type="so.wwb.gamebox.model.company.lottery.po.SiteLotteryOdd"--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<%-- 正特码 --%>
<div class="lot-content clearfix">
    <div class="fl main-left">
        <div class="hd clearfix">
            <div class="fl">
                快捷金额：
                <input type="text" class="txt">
            </div>
            <div class="fr">
                <div class="T-tab clearfix" style="margin-top: 4.4px;">
                    <a href="javascript:void(0)" subCode="positive_first" class="active">正码一</a>
                    <a href="javascript:void(0)" subCode="positive_second">正码二</a>
                    <a href="javascript:void(0)" subCode="positive_third">正码三</a>
                    <a href="javascript:void(0)" subCode="positive_fourth">正码四</a>
                    <a href="javascript:void(0)" subCode="positive_fifth">正码五</a>
                    <a href="javascript:void(0)" subCode="positive_sixth">正码六</a>
                </div>
            </div>
        </div>
        <div class="table-common lhc-ztm">

            <table width="100%" border="1">
                <thead>
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
                    <th width="47">号码</th>
                    <th width="56">赔率</th>
                    <th>金额</th>
                </tr>
                </thead>

                <tbody>
                <c:set var="count" value="1"/>
                <c:forEach var="i" begin="1" end="49">
                    <c:if test="${i%5==1}">
                        <c:set var="num" value="0"/>
                        <tr>
                    </c:if>
                    <c:set var="betNum" value="${num*10 + count}"/>
                    <td data-num="${betNum}" style="cursor: pointer;">
                        <span class="ball-icon ball-${betNum}"></span>
                    </td>
                    <td data-num="${betNum}" style="cursor: pointer;">
                        <strong class="color-red pl odds1"></strong>
                    </td>
                    <c:choose>
                        <c:when test="${betNum<10}">
                            <td data-num="${betNum}"><input type="text" class="table-txt" data-odds="" data-bet-code="" data-play="${digitalPlay}" data-bet-num="0${betNum}" data-name=""/></td>
                        </c:when>
                        <c:otherwise>
                            <td data-num="${betNum}"><input type="text" class="table-txt" data-odds="" data-bet-code="" data-play="${digitalPlay}" data-bet-num="${betNum}" data-name=""/></td>
                        </c:otherwise>
                    </c:choose>
                    <c:set var="num" value="${num+1}"/>
                    <c:if test="${(i%5 == 0)}">
                        <c:set var="count" value="${count+1}"/>
                        </tr>
                    </c:if>
                    <c:if test="${i==49}">
                        <td style="cursor: pointer;">&nbsp;</td>
                        <td style="cursor: pointer;">&nbsp;</td>
                        <td style="cursor: pointer;">&nbsp;</td>
                        </tr>
                    </c:if>
                </c:forEach>
                </tbody>
            </table>
            <table width="100%" border="1">
                <thead>
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

                    <td data-num="单" style="cursor: pointer;">单</td>
                    <td data-num="单" style="cursor: pointer;"><strong class="color-red pl"></strong></td>
                    <td data-num="单"><input type="text" class="table-txt" data-odds="" data-bet-code="" data-play="${singleDoublePlay}" data-bet-num="单" data-name=""/></td>


                    <td data-num="大" style="cursor: pointer;">大</td>
                    <td data-num="大" style="cursor: pointer;"><strong class="color-red pl"></strong></td>
                    <td data-num="大"><input type="text" class="table-txt" data-odds="" data-bet-code="" data-play="${bigSmallPlay}" data-bet-num="大" data-name=""/></td>


                    <td data-num="合单" style="cursor: pointer;">合单</td>
                    <td data-num="合单" style="cursor: pointer;"><strong class="color-red pl"></strong></td>
                    <td data-num="合单"><input type="text" class="table-txt" data-odds="" data-bet-code="" data-play="${sumSingleDoublePlay}" data-bet-num="合单" data-name=""/></td>

                    <td data-num="合大" style="cursor: pointer;">合大</td>
                    <td data-num="合大" style="cursor: pointer;"><strong class="color-red pl"></strong></td>
                    <td data-num="合大"><input type="text" class="table-txt" data-odds="" data-bet-code="" data-play="${sumBigSmallPlay}" data-bet-num="合大" data-name=""/></td>

                </tr>

                <tr>

                    <td data-num="双" style="cursor: pointer;">双</td>
                    <td data-num="双" style="cursor: pointer;"><strong class="color-red pl"></strong></td>
                    <td data-num="双"><input type="text" class="table-txt" data-odds="" data-bet-code="" data-play="${singleDoublePlay}" data-bet-num="双" data-name=""/></td>

                    <td data-num="小" style="cursor: pointer;">小</td>
                    <td data-num="小" style="cursor: pointer;"><strong class="color-red pl"></strong></td>
                    <td data-num="小"><input type="text" class="table-txt" data-odds="" data-bet-code="" data-play="${bigSmallPlay}" data-bet-num="小" data-name=""/></td>

                    <td data-num="合双" style="cursor: pointer;">合双</td>
                    <td data-num="合双" style="cursor: pointer;"><strong class="color-red pl"></strong></td>
                    <td data-num="合双"><input type="text" class="table-txt" data-odds="" data-bet-code="" data-play="${sumSingleDoublePlay}" data-bet-num="合双" data-name=""/></td>

                    <td data-num="合小" style="cursor: pointer;">合小</td>
                    <td data-num="合小" style="cursor: pointer;"><strong class="color-red pl"></strong></td>
                    <td data-num="合小"><input type="text" class="table-txt" data-odds="" data-bet-code="" data-play="${sumBigSmallPlay}" data-bet-num="合小" data-name=""/></td>

               </tr>
                <tr>
                    <td data-num="红波" style="cursor: pointer;">红波</td>
                    <td data-num="红波" style="cursor: pointer;"><strong class="color-red pl"></strong></td>
                    <td data-num="红波"><input type="text" class="table-txt" data-odds="" data-bet-code="" data-play="${colourPlay}" data-bet-num="红波" data-name=""/></td>


                    <td data-num="蓝波" style="cursor: pointer;">蓝波</td>
                    <td data-num="蓝波" style="cursor: pointer;"><strong class="color-red pl"></strong></td>
                    <td data-num="蓝波"><input type="text" class="table-txt" data-odds="" data-bet-code="" data-play="${colourPlay}" data-bet-num="蓝波" data-name=""/></td>

                    <td data-num="绿波" style="cursor: pointer;">绿波</td>
                    <td data-num="绿波" style="cursor: pointer;"><strong class="color-red pl"></strong></td>
                    <td data-num="绿波"><input type="text" class="table-txt" data-odds="" data-bet-code="" data-play="${colourPlay}" data-bet-num="绿波" data-name=""/></td>

                </tr>
                </tbody>
            </table>

        </div>
        <div class="btns">
            <button type="submit" class="btn btn-1">提交</button>
            <button class="btn btn-2">重设</button>
        </div>
    </div>
</div>
<script type="text/javascript">
    curl(['site/hall/lhc/hklhc/NormalSpecialCode'], function(PlayWay) {
        page.playWay = new PlayWay();
    });
</script>
