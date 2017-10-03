<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script type="text/css">
    .list_wrap ul li.watch_more{
        width:100%;
        text-align:center;
    }
</script>
<div class="Betting wid1" id="bottomInfo">
    <div class="tabs">
        <ul>
            <li data-tab="myBet" class="acti">我的投注</li>
            <li data-tab="myPrize">我的中奖</li>
            <li data-tab="todayOpen">今日开奖号码</li>
            <%--<li data-tab="prizeMemo">奖金计算说明</li>--%>
        </ul>
    </div>
    <div class="list_wrap myBet"  style="min-height:60px; max-height: 325px"></div>
    <div class="list_wrap myPrize"  style="min-height:60px;max-height: 325px;display: none"></div>
    <div class="list_wrap todayOpen"  style="min-height:60px;max-height: 325px;display: none"></div>
    <%--<div class="list_wrap prizeMemo"></div>--%>
</div>

<script type="text/html" id="template_myBetTemplate">
    <ul>
        <li class="not">
            <span>游戏种类</span>
            <span>期号</span>
            <span>玩法</span>
            <span>投注号码</span>
            <span>投注额</span>
            <span>奖金</span>
            <span>状态</span>
        </li>
        {{each list as value index}}
            {{if index % 2 == 0}}
                <li class="odd">
            {{else}}
                <li>
            {{/if}}
                <span>{{value.codeMemo}}</span>
                <span>{{value.expect}}</span>
                <span>{{value.betCodeMemo}}-{{value.playCodeMemo}}</span>
                <span>{{value.betNum}}</span>
                <span>{{value.betAmount}}</span>
                <span>{{value.odd}}</span>
                {{if value.status == 1}}
                    <span>待结算</span>
                {{else if value.status == 2}}
                    <span>已结算</span>
                {{else if value.status == 3}}
                    <span>已撤单</span>
                {{/if}}
            </li>
        {{/each}}
        <li class="watch_more" style="text-align: center;"><a href="javascript:void(0)" data-url="/lotteryBetOrder/list.html">查看更多</a></li>
    </ul>
</script>

<script type="text/html" id="template_myPrizeTemplate">
    <ul>
        <li class="not">
            <span>游戏种类</span>
            <span>期号</span>
            <span>玩法</span>
            <span>投注号码</span>
            <span>投注额</span>
            <span>中奖金额</span>
            <span>状态</span>
        </li>
        {{each list as value index}}
        {{if index % 2 == 0}}
        <li class="odd">
            {{else}}
        <li>
            {{/if}}
            <span>{{value.codeMemo}}</span>
            <span>{{value.expect}}</span>
            <span>{{value.betCodeMemo}}-{{value.playCodeMemo}}</span>
            <span>{{value.betNum}}</span>
            <span>{{value.betAmount}}</span>
            <span>{{value.payout}}</span>
            {{if value.status == 1}}
            <span>等待开奖</span>
            {{else if value.status == 2}}
            {{if value.payout > 0}}
            <span>已中奖</span>
            {{else}}
            <span>未中奖</span>
            {{/if}}
            {{else if value.status == 3}}
            <span>已撤单</span>
            {{/if}}
        </li>
        {{/each}}
        <li class="watch_more" style="text-align: center;"><a href="javascript:void(0)" data-url="/lotteryBetOrder/list.html">查看更多</a></li>
    </ul>
</script>
<%--今日号码--%>
<script type="text/html" id="template_todayOpenTemplate">
    <ul>
        <li class="not">
            <span>游戏种类</span>
            <span>期号</span>
            <span>奖号</span>
            <span>开奖时间</span>
        </li>
        {{each list as value index}}
        {{if index % 2 == 0}}
        <li class="odd">
            {{else}}
        <li>
            {{/if}}
            <span>{{value.codeMemo}}</span>
            <span>{{value.expect}}</span>
            <span style="color:red;">{{value.openCode}}</span>
            <span>
                {{value.fmOpenTime}}
            </span>
            <span class="pid" style="visibility: hidden">{{value.code}}</span>
        </li>
        {{/each}}
        <li class="watch_more" style="text-align: center;"><a href="javascript:void(0)" data-url="/lotteryResultHistory/toLotteryResultHistory.html?search.code=${code}">查看更多</a></li>
    </ul>
</script>
