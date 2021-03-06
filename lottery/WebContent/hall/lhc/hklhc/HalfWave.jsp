<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<div class="lot-content clearfix">
    <div class="fl main-left">
        <div class="hd rehd clearfix" id="toptouzhu">
                <%@ include file="../../common/ShortMoney.jsp" %>
        </div>

        <div class="table-common">
            <table width="100%" border="1">
                <thead>
                <tr>
                    <th width="108">号码</th>
                    <th width="80">赔率</th>
                    <th width="80">金额</th>
                    <th>号码</th>
                </tr>
                </thead>

                <tbody>
                <c:set var="lottery" value="${odds['红单']}"/>
                <c:set var="odd" value="${lottery.odd}"/>
                <tr>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;">红单</td>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;">
                        <strong class="color-red pl">${odd}</strong>
                    </td>
                    <td data-num="${lottery.betNum}">
                        <input type="text" class="table-txt" data-name="红单" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${lhcHalfColourSingleDouble}" data-bet-num="${lottery.betNum}"/>
                    </td>
                    <td style="cursor: pointer;">
                        <span class="ball-icon ball-01"></span>
                        <span class="ball-icon ball-07"></span>
                        <span class="ball-icon ball-13"></span>
                        <span class="ball-icon ball-19"></span>
                        <span class="ball-icon ball-23"></span>
                        <span class="ball-icon ball-29"></span>
                        <span class="ball-icon ball-35"></span>
                        <span class="ball-icon ball-45"></span>
                    </td>
                </tr>
                <c:set var="lottery" value="${odds['红双']}"/>
                <c:set var="odd" value="${lottery.odd}"/>
                <tr>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;">${lottery.betNum}</td>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;"><strong class="color-red pl">${odd}</strong>
                    </td>
                    <td data-num="${lottery.betNum}">
                        <input type="text" class="table-txt" data-name="${lottery.betNum}" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${lhcHalfColourSingleDouble}" data-bet-num="${lottery.betNum}"/>
                    </td>
                    <td style="cursor: pointer;">
                        <span class="ball-icon ball-02"></span>
                        <span class="ball-icon ball-08"></span>
                        <span class="ball-icon ball-12"></span>
                        <span class="ball-icon ball-18"></span>
                        <span class="ball-icon ball-24"></span>
                        <span class="ball-icon ball-30"></span>
                        <span class="ball-icon ball-34"></span>
                        <span class="ball-icon ball-40"></span>
                        <span class="ball-icon ball-46"></span>
                    </td>
                </tr>
                <c:set var="lottery" value="${odds['红大']}"/>
                <c:set var="odd" value="${lottery.odd}"/>
                <tr>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;">${lottery.betNum}</td>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;"><strong class="color-red pl">${odd}</strong>
                    </td>
                    <td data-num="${lottery.betNum}">
                        <input type="text" class="table-txt" data-name="${lottery.betNum}" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${lhcHalfColourBigSmall}" data-bet-num="${lottery.betNum}"/>
                    </td>
                    <td style="cursor: pointer;">
                        <span class="ball-icon ball-29"></span>
                        <span class="ball-icon ball-30"></span>
                        <span class="ball-icon ball-34"></span>
                        <span class="ball-icon ball-35"></span>
                        <span class="ball-icon ball-40"></span>
                        <span class="ball-icon ball-45"></span>
                        <span class="ball-icon ball-46"></span>
                    </td>
                </tr>
                <c:set var="lottery" value="${odds['红小']}"/>
                <c:set var="odd" value="${lottery.odd}"/>
                <tr>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;">${lottery.betNum}</td>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="${lottery.betNum}">
                        <input type="text" class="table-txt" data-name="${lottery.betNum}" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${lhcHalfColourBigSmall}" data-bet-num="${lottery.betNum}"/>
                    </td>
                    <td style="cursor: pointer;">
                        <span class="ball-icon ball-01"></span>
                        <span class="ball-icon ball-02"></span>
                        <span class="ball-icon ball-07"></span>
                        <span class="ball-icon ball-08"></span>
                        <span class="ball-icon ball-12"></span>
                        <span class="ball-icon ball-13"></span>
                        <span class="ball-icon ball-18"></span>
                        <span class="ball-icon ball-19"></span>
                        <span class="ball-icon ball-23"></span>
                        <span class="ball-icon ball-24"></span>
                    </td>
                </tr>
                <c:set var="lottery" value="${odds['绿单']}"/>
                <c:set var="odd" value="${lottery.odd}"/>
                <tr>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;">${lottery.betNum}</td>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="${lottery.betNum}">
                        <input type="text" class="table-txt" data-name="${lottery.betNum}" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${lhcHalfColourSingleDouble}" data-bet-num="${lottery.betNum}" />
                    </td>
                    <td style="cursor: pointer;">
                        <span class="ball-icon ball-05"></span>
                        <span class="ball-icon ball-11"></span>
                        <span class="ball-icon ball-17"></span>
                        <span class="ball-icon ball-21"></span>
                        <span class="ball-icon ball-27"></span>
                        <span class="ball-icon ball-33"></span>
                        <span class="ball-icon ball-39"></span>
                        <span class="ball-icon ball-43"></span>
                    </td>
                </tr>

                <c:set var="lottery" value="${odds['绿双']}"/>
                <c:set var="odd" value="${lottery.odd}"/>
                <tr>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;">${lottery.betNum}</td>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;"><strong class="color-red pl" >${odd}</strong>
                    </td>
                    <td data-num="${lottery.betNum}">
                        <input type="text" class="table-txt" data-name="${lottery.betNum}" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${lhcHalfColourSingleDouble}" data-bet-num="${lottery.betNum}"/>
                    </td>
                    <td style="cursor: pointer;">
                        <span class="ball-icon ball-06"></span>
                        <span class="ball-icon ball-16"></span>
                        <span class="ball-icon ball-22"></span>
                        <span class="ball-icon ball-28"></span>
                        <span class="ball-icon ball-32"></span>
                        <span class="ball-icon ball-38"></span>
                        <span class="ball-icon ball-44"></span>
                    </td>
                </tr>
                <c:set var="lottery" value="${odds['绿大']}"/>
                <c:set var="odd" value="${lottery.odd}"/>
                <tr>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;">${lottery.betNum}</td>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="${lottery.betNum}">
                        <input type="text" class="table-txt" data-name="${lottery.betNum}" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${lhcHalfColourBigSmall}" data-bet-num="${lottery.betNum}"/>
                    </td>
                    <td style="cursor: pointer;">
                        <span class="ball-icon ball-27"></span>
                        <span class="ball-icon ball-28"></span>
                        <span class="ball-icon ball-32"></span>
                        <span class="ball-icon ball-33"></span>
                        <span class="ball-icon ball-38"></span>
                        <span class="ball-icon ball-39"></span>
                        <span class="ball-icon ball-43"></span>
                        <span class="ball-icon ball-44"></span>
                    </td>
                </tr>
                <c:set var="lottery" value="${odds['绿小']}"/>
                <c:set var="odd" value="${lottery.odd}"/>
                <tr>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;">${lottery.betNum}</td>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="${lottery.betNum}">
                        <input type="text" class="table-txt" data-name="${lottery.betNum}" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${lhcHalfColourBigSmall}" data-bet-num="${lottery.betNum}"/>
                    </td>
                    <td style="cursor: pointer;">
                        <span class="ball-icon ball-05"></span>
                        <span class="ball-icon ball-06"></span>
                        <span class="ball-icon ball-11"></span>
                        <span class="ball-icon ball-16"></span>
                        <span class="ball-icon ball-17"></span>
                        <span class="ball-icon ball-21"></span>
                        <span class="ball-icon ball-22"></span>
                    </td>
                </tr>

                <c:set var="lottery" value="${odds['蓝单']}"/>
                <c:set var="odd" value="${lottery.odd}"/>
                <tr>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;">${lottery.betNum}</td>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="${lottery.betNum}">
                        <input type="text" class="table-txt" data-name="${lottery.betNum}" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${lhcHalfColourSingleDouble}" data-bet-num="${lottery.betNum}"/>
                    </td>
                    <td style="cursor: pointer;">
                        <span class="ball-icon ball-03"></span>
                        <span class="ball-icon ball-09"></span>
                        <span class="ball-icon ball-15"></span>
                        <span class="ball-icon ball-25"></span>
                        <span class="ball-icon ball-31"></span>
                        <span class="ball-icon ball-37"></span>
                        <span class="ball-icon ball-41"></span>
                        <span class="ball-icon ball-47"></span>
                    </td>
                </tr>
                <c:set var="lottery" value="${odds['蓝双']}"/>
                <c:set var="odd" value="${lottery.odd}"/>
                <tr>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;">${lottery.betNum}</td>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="${lottery.betNum}">
                        <input type="text" class="table-txt" data-name="${lottery.betNum}" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${lhcHalfColourSingleDouble}" data-bet-num="${lottery.betNum}"/></td>
                    <td style="cursor: pointer;">
                        <span class="ball-icon ball-04"></span>
                        <span class="ball-icon ball-10"></span>
                        <span class="ball-icon ball-14"></span>
                        <span class="ball-icon ball-20"></span>
                        <span class="ball-icon ball-26"></span>
                        <span class="ball-icon ball-36"></span>
                        <span class="ball-icon ball-42"></span>
                        <span class="ball-icon ball-48"></span>
                    </td>
                </tr>
                <c:set var="lottery" value="${odds['蓝大']}"/>
                <c:set var="odd" value="${lottery.odd}"/>
                <tr>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;">${lottery.betNum}</td>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;"><strong class="color-red pl">${odd}</strong></td>
                    <td data-num="${lottery.betNum}">
                        <input type="text" class="table-txt" data-name="${lottery.betNum}"  data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${lhcHalfColourBigSmall}" data-bet-num="${lottery.betNum}"/>
                    </td>
                    <td style="cursor: pointer;">
                        <span class="ball-icon ball-25"></span>
                        <span class="ball-icon ball-26"></span>
                        <span class="ball-icon ball-31"></span>
                        <span class="ball-icon ball-36"></span>
                        <span class="ball-icon ball-37"></span>
                        <span class="ball-icon ball-41"></span>
                        <span class="ball-icon ball-42"></span>
                        <span class="ball-icon ball-47"></span>
                        <span class="ball-icon ball-48"></span>
                    </td>
                </tr>

                <c:set var="lottery" value="${odds['蓝小']}"/>
                <c:set var="odd" value="${lottery.odd}"/>
                <tr>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;">${lottery.betNum}</td>
                    <td data-num="${lottery.betNum}" style="cursor: pointer;">
                        <strong class="color-red pl">${odd}</strong>
                    </td>
                    <td data-num="${lottery.betNum}">
                        <input type="text" class="table-txt" data-name="${lottery.betNum}" data-odds="${odd}" data-bet-code="${lottery.betCode}" data-play="${lhcHalfColourBigSmall}" data-bet-num="${lottery.betNum}"/>
                    </td>
                    <td style="cursor: pointer;">
                        <span class="ball-icon ball-03"></span>
                        <span class="ball-icon ball-04"></span>
                        <span class="ball-icon ball-09"></span>
                        <span class="ball-icon ball-10"></span>
                        <span class="ball-icon ball-14"></span>
                        <span class="ball-icon ball-15"></span>
                        <span class="ball-icon ball-20"></span>
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

    <div class="fr main-right cl-10">
    </div>
</div>
<script type="text/javascript">
    curl(['site/hall/lhc/hklhc/PlayWay'], function (PlayWay) {
        page.playWay = new PlayWay();
    });
</script>