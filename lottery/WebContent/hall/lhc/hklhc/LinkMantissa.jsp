<%--@elvariable id="odds" type="Map<java.lang.String,so.wwb.gamebox.model.company.lottery.po.SiteLotteryOdd>"--%>
<%--@elvariable id="lottery" type="so.wwb.gamebox.model.company.lottery.po.SiteLotteryOdd"--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<%-- 正特码 --%>
<div class="lot-content clearfix">
    <div class="fl main-left">
        <div class="hd rehd clearfix">
            <%@ include file="../../common/ShortMoney.jsp" %>
            <div class="fr">
                <div class="T-tab clearfix" style="margin-top: 4.4px;">
                    <a href="javascript:void(0)" subCode="lhc_two_mantissa_link" class="active">二尾连</a>
                    <a href="javascript:void(0)" subCode="lhc_three_mantissa_link" >三尾连</a>
                    <a href="javascript:void(0)" subCode="lhc_four_mantissa_link" >四尾连</a>
                    <a href="javascript:void(0)" subCode="lhc_five_mantissa_link" >五尾连</a>
                </div>

                <input id="playCode2" type="hidden" value="${lhcTwoMantissaLink}">
                <input id="playCode3" type="hidden" value="${lhcThreeMantissaLink}">
                <input id="playCode4" type="hidden" value="${lhcFourMantissaLink}">
                <input id="playCode5" type="hidden" value="${lhcFiveMantissaLink}">

            </div>
        </div>
        <div class="table-common lhc-ztm">

            <table width="100%" border="1">
                <thead>
                <tr>
                    <th colspan="10">
                        <strong>
                            <font id="lhc_title">三全中</font>
                            <span id="pl" class="pl red"></span>
                        </strong>
                        (请选择<font id="minNum">3</font>个及以上号码)
                    </th>
                </tr>
                <tr>
                    <th>号码</th> <th>号码</th>
                </tr>
                </thead>

                <tbody>
                <tr>
                    <td style="cursor: pointer;" class="hx-list">
                        <strong style="margin-left:-30px">0</strong>
                        <input type="checkbox" data-name="0" data-plid="6798"></input>
                        <span class="ball-icon ball-10"></span>
                        <span class="ball-icon ball-20"></span>
                        <span class="ball-icon ball-30"></span>
                        <span class="ball-icon ball-40"></span>
                    </td>

                    <td style="cursor: pointer;" class="hx-list">
                        <strong>1</strong>
                        <input type="checkbox" data-name="1" data-plid="6798"></input>
                        <span class="ball-icon ball-01"></span>
                        <span class="ball-icon ball-11"></span>
                        <span class="ball-icon ball-21"></span>
                        <span class="ball-icon ball-31"></span>
                        <span class="ball-icon ball-41"></span>
                    </td>
                </tr>
                <tr>
                    <td style="cursor: pointer;" class="hx-list">
                        <strong>2</strong>
                        <input type="checkbox" data-name="2" data-plid="6798"></input>
                        <span class="ball-icon ball-02"></span>
                        <span class="ball-icon ball-12"></span>
                        <span class="ball-icon ball-22"></span>
                        <span class="ball-icon ball-32"></span>
                        <span class="ball-icon ball-42"></span>
                    </td>

                    <td style="cursor: pointer;" class="hx-list">
                        <strong>3</strong>
                        <input type="checkbox" data-name="3" data-plid="6798"></input>
                        <span class="ball-icon ball-03"></span>
                        <span class="ball-icon ball-13"></span>
                        <span class="ball-icon ball-23"></span>
                        <span class="ball-icon ball-33"></span>
                        <span class="ball-icon ball-43"></span>
                    </td>
                </tr>
                <tr>
                    <td style="cursor: pointer;" class="hx-list">
                        <strong>4</strong>
                        <input type="checkbox" data-name="4" data-plid="6798"></input>
                        <span class="ball-icon ball-04"></span>
                        <span class="ball-icon ball-14"></span>
                        <span class="ball-icon ball-24"></span>
                        <span class="ball-icon ball-34"></span>
                        <span class="ball-icon ball-44"></span>
                    </td>

                    <td style="cursor: pointer;" class="hx-list">
                        <strong>5</strong>
                        <input type="checkbox" data-name="5" data-plid="6798"></input>
                        <span class="ball-icon ball-05"></span>
                        <span class="ball-icon ball-15"></span>
                        <span class="ball-icon ball-25"></span>
                        <span class="ball-icon ball-35"></span>
                        <span class="ball-icon ball-45"></span>
                    </td>
                </tr>
                <tr>
                    <td style="cursor: pointer;" class="hx-list">
                        <strong>6</strong>
                        <input type="checkbox" data-name="6" data-plid="6798"></input>
                        <span class="ball-icon ball-06"></span>
                        <span class="ball-icon ball-16"></span>
                        <span class="ball-icon ball-26"></span>
                        <span class="ball-icon ball-36"></span>
                        <span class="ball-icon ball-46"></span>
                    </td>


                    <td style="cursor: pointer;" class="hx-list">
                        <strong>7</strong>
                        <input type="checkbox" data-name="7" data-plid="6798"></input>
                        <span class="ball-icon ball-07"></span>
                        <span class="ball-icon ball-17"></span>
                        <span class="ball-icon ball-27"></span>
                        <span class="ball-icon ball-37"></span>
                        <span class="ball-icon ball-47"></span>
                    </td>
                </tr>
                <tr>
                    <td style="cursor: pointer;" class="hx-list">
                        <strong>8</strong>
                        <input type="checkbox" data-name="8" data-plid="6798"></input>
                        <span class="ball-icon ball-08"></span>
                        <span class="ball-icon ball-18"></span>
                        <span class="ball-icon ball-28"></span>
                        <span class="ball-icon ball-38"></span>
                        <span class="ball-icon ball-48"></span>
                    </td>

                    <td style="cursor: pointer;" class="hx-list">
                        <strong>9</strong>
                        <input type="checkbox" data-name="9" data-plid="6798"></input>
                        <span class="ball-icon ball-09"></span>
                        <span class="ball-icon ball-19"></span>
                        <span class="ball-icon ball-29"></span>
                        <span class="ball-icon ball-39"></span>
                        <span class="ball-icon ball-49"></span>
                    </td>
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

    curl(['site/hall/lhc/hklhc/LinkZodiac'], function(PlayWay) {
        page.playWay = new PlayWay();
    });

</script>
