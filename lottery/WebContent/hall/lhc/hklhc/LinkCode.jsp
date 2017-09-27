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
                        <a href="javascript:void(0)" subCode="lhc_three_all_in" class="active">三全中</a>
                        <a href="javascript:void(0)" subCode="lhc_three_in_two">三中二</a>
                        <a href="javascript:void(0)" subCode="lhc_two_all_in">二全中</a>
                        <a href="javascript:void(0)" subCode="lhc_two_in_special">二中特</a>
                        <a href="javascript:void(0)" subCode="lhc_special_strand">特串</a>
                        <a href="javascript:void(0)" subCode="lhc_four_all_in">四全中</a>
                </div>
                <input id="playCode2" type="hidden" value="${lhcTwoAllIn}">
                <input id="playCode3" type="hidden" value="${lhcThreeAllIn}">
                <input id="playCode4" type="hidden" value="${lhcFourAllIn}">
                <input id="playCode5" type="hidden" value="${lhcThreeInTwo}">
                <input id="playCode6" type="hidden" value="${lhcTwoInSpecial}">
                <input id="playCode7" type="hidden" value="${lhcSpecialStrand}">

                <input id="current_lhc" type="hidden" >
            </div>
        </div>
        <div class="table-common lhc-ztm">

            <table width="100%" border="1">
                <thead>
                    <tr>
                        <th colspan="10"><strong><font id="lhc_title">三全中</font>@<font color="red" id="oddValue"></font> <label class="nextOddValue" hidden>@</label> <font class="nextOddValue" hidden color="red" id="nextOddValue"></font>   <span id="pl" class="pl red"></span></strong> (请选择<font id="minNum">3</font>个及以上号码)</th>
                    </tr>
                    <tr>
                        <th>号码</th>
                        <th>号码</th>
                        <th>号码</th>
                        <th>号码</th>
                        <th>号码</th>
                        <th>号码</th>
                        <th>号码</th>
                        <th>号码</th>
                        <th>号码</th>
                        <th>号码</th>
                    </tr>
                </thead>

                <tbody>
                <tr>
                    <td style="cursor: pointer;" class="new-ball-st lhc-num" num="1"><strong class="pl">1</strong><input type="checkbox" data-name="01"></td>
                    <td style="cursor: pointer;" class="new-ball-st lhc-num" num="2"><strong class="pl">2</strong><input type="checkbox" data-name="02"></td>
                    <td style="cursor: pointer;" class="new-ball-st lhc-num" num="3"><strong class="pl">3</strong><input type="checkbox" data-name="03"></td>
                    <td style="cursor: pointer;" class="new-ball-st lhc-num" num="4"><strong class="pl">4</strong><input type="checkbox" data-name="04"></td>
                    <td style="cursor: pointer;" class="new-ball-st lhc-num" num="5"><strong class="pl">5</strong><input type="checkbox" data-name="05"></td>
                    <td style="cursor: pointer;" class="new-ball-st lhc-num" num="6"><strong class="pl">6</strong><input type="checkbox" data-name="06"></td>
                    <td style="cursor: pointer;" class="new-ball-st lhc-num" num="7"><strong class="pl">7</strong><input type="checkbox" data-name="07"></td>
                    <td style="cursor: pointer;" class="new-ball-st lhc-num" num="8"><strong class="pl">8</strong><input type="checkbox" data-name="08"></td>
                    <td style="cursor: pointer;" class="new-ball-st lhc-num" num="9"><strong class="pl">9</strong><input type="checkbox" data-name="09"></td>
                    <td style="cursor: pointer;" class="new-ball-st lhc-num" num="10"><strong class="pl">10</strong><input type="checkbox" data-name="10"></td>
                </tr>
                <tr>
                    <td style="cursor: pointer;" class="new-ball-st lhc-num" num="11"><strong class="pl">11</strong><input type="checkbox" data-name="11"></td>
                    <td style="cursor: pointer;" class="new-ball-st lhc-num" num="12"><strong class="pl">12</strong><input type="checkbox" data-name="12"></td>
                    <td style="cursor: pointer;" class="new-ball-st lhc-num" num="13"><strong class="pl">13</strong><input type="checkbox" data-name="13"></td>
                    <td style="cursor: pointer;" class="new-ball-st lhc-num" num="14"><strong class="pl">14</strong><input type="checkbox" data-name="14"></td>
                    <td style="cursor: pointer;" class="new-ball-st lhc-num" num="15"><strong class="pl">15</strong><input type="checkbox" data-name="15"></td>
                    <td style="cursor: pointer;" class="new-ball-st lhc-num" num="16"><strong class="pl">16</strong><input type="checkbox" data-name="16"></td>
                    <td style="cursor: pointer;" class="new-ball-st lhc-num" num="17"><strong class="pl">17</strong><input type="checkbox" data-name="17"></td>
                    <td style="cursor: pointer;" class="new-ball-st lhc-num" num="18"><strong class="pl">18</strong><input type="checkbox" data-name="18"></td>
                    <td style="cursor: pointer;" class="new-ball-st lhc-num" num="19"><strong class="pl">19</strong><input type="checkbox" data-name="19"></td>
                    <td style="cursor: pointer;" class="new-ball-st lhc-num" num="20"><strong class="pl">20</strong><input type="checkbox" data-name="20"></td>
                </tr>
                <tr>
                    <td style="cursor: pointer;" class="new-ball-st lhc-num" num="21"><strong class="pl">21</strong><input type="checkbox" data-name="21"></td>
                    <td style="cursor: pointer;" class="new-ball-st lhc-num" num="22"><strong class="pl">22</strong><input type="checkbox" data-name="22"></td>
                    <td style="cursor: pointer;" class="new-ball-st lhc-num" num="23"><strong class="pl">23</strong><input type="checkbox" data-name="23"></td>
                    <td style="cursor: pointer;" class="new-ball-st lhc-num" num="24"><strong class="pl">24</strong><input type="checkbox" data-name="24"></td>
                    <td style="cursor: pointer;" class="new-ball-st lhc-num" num="25"><strong class="pl">25</strong><input type="checkbox" data-name="25"></td>
                    <td style="cursor: pointer;" class="new-ball-st lhc-num" num="26"><strong class="pl">26</strong><input type="checkbox" data-name="26"></td>
                    <td style="cursor: pointer;" class="new-ball-st lhc-num" num="27"><strong class="pl">27</strong><input type="checkbox" data-name="27"></td>
                    <td style="cursor: pointer;" class="new-ball-st lhc-num" num="28"><strong class="pl">28</strong><input type="checkbox" data-name="28"></td>
                    <td style="cursor: pointer;" class="new-ball-st lhc-num" num="29"><strong class="pl">29</strong><input type="checkbox" data-name="29"></td>
                    <td style="cursor: pointer;" class="new-ball-st lhc-num" num="30"><strong class="pl">30</strong><input type="checkbox" data-name="30"></td>
                </tr>
                <tr>
                    <td style="cursor: pointer;" class="new-ball-st lhc-num" num="31"><strong class="pl">31</strong><input type="checkbox" data-name="31"></td>
                    <td style="cursor: pointer;" class="new-ball-st lhc-num" num="32"><strong class="pl">32</strong><input type="checkbox" data-name="32"></td>
                    <td style="cursor: pointer;" class="new-ball-st lhc-num" num="33"><strong class="pl">33</strong><input type="checkbox" data-name="33"></td>
                    <td style="cursor: pointer;" class="new-ball-st lhc-num" num="34"><strong class="pl">34</strong><input type="checkbox" data-name="34"></td>
                    <td style="cursor: pointer;" class="new-ball-st lhc-num" num="35"><strong class="pl">35</strong><input type="checkbox" data-name="35"></td>
                    <td style="cursor: pointer;" class="new-ball-st lhc-num" num="36"><strong class="pl">36</strong><input type="checkbox" data-name="36"></td>
                    <td style="cursor: pointer;" class="new-ball-st lhc-num" num="37"><strong class="pl">37</strong><input type="checkbox" data-name="37"></td>
                    <td style="cursor: pointer;" class="new-ball-st lhc-num" num="38"><strong class="pl">38</strong><input type="checkbox" data-name="38"></td>
                    <td style="cursor: pointer;" class="new-ball-st lhc-num" num="39"><strong class="pl">39</strong><input type="checkbox" data-name="39"></td>
                    <td style="cursor: pointer;" class="new-ball-st lhc-num" num="40"><strong class="pl">40</strong><input type="checkbox" data-name="40"></td>
                </tr>
                <tr>
                    <td style="cursor: pointer;" class="new-ball-st lhc-num" num="41"><strong class="pl">41</strong><input type="checkbox" data-name="41"></td>
                    <td style="cursor: pointer;" class="new-ball-st lhc-num" num="42"><strong class="pl">42</strong><input type="checkbox" data-name="42"></td>
                    <td style="cursor: pointer;" class="new-ball-st lhc-num" num="43"><strong class="pl">43</strong><input type="checkbox" data-name="43"></td>
                    <td style="cursor: pointer;" class="new-ball-st lhc-num" num="44"><strong class="pl">44</strong><input type="checkbox" data-name="44"></td>
                    <td style="cursor: pointer;" class="new-ball-st lhc-num" num="45"><strong class="pl">45</strong><input type="checkbox" data-name="45"></td>
                    <td style="cursor: pointer;" class="new-ball-st lhc-num" num="46"><strong class="pl">46</strong><input type="checkbox" data-name="46"></td>
                    <td style="cursor: pointer;" class="new-ball-st lhc-num" num="47"><strong class="pl">47</strong><input type="checkbox" data-name="47"></td>
                    <td style="cursor: pointer;" class="new-ball-st lhc-num" num="48"><strong class="pl">48</strong><input type="checkbox" data-name="48"></td>
                    <td style="cursor: pointer;" class="new-ball-st lhc-num" num="49"><strong class="pl">49</strong><input type="checkbox" data-name="49"></td>
                    <td class="new-ball-st"></td>
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

    curl(['site/hall/lhc/hklhc/LinkCode'], function(PlayWay) {
        page.playWay = new PlayWay();
    });

</script>
