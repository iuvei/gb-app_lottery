<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>购彩大厅</title>
    <%@ include file="/include/include.head.jsp" %>
</head>

<body style="background-color: white">

<div class="help_list">
    <div class="lis">
        <h5>重庆幸运农场</h5>
        <ul>
            <li class="sli">常规玩法</li>
            <li>开奖规则</li>
        </ul>
    </div>
    <div class="help_col show">
        <h5><strong>【单码/双面规则说明】</strong></h5>
        <p><strong>◎单码：</strong></br>
            第一球、第二球、第三球、第四球、第五球、第六球、第七球、第八球：指下注的球号与现场滚球开出之号码其开奖顺序及开奖号码相同，</br>
            视为中奖，如现场滚球第一球开奖为20号，下注第一球为20则视为中奖，其它号码视为不中奖。</p>

        <p><strong>◎大小：</strong></br>
            开出的号码大于或等于11为大，小于或等于10为小 。</p>

        <p><strong>◎单双：</strong></br>
            号码为双数叫双，如08、16；号码为单数叫单，如19、05 。</p>

        <p><strong>◎和数单双：</strong></br>
            正码个位和十位数字之和来判断胜负，如01、12、16为和单；02、11、20为和双 。</p>

        <p><strong>◎尾数大小：</strong></br>
            开出之正码尾数大于或等于5为尾大，小于或等于4为尾小。</p>

        <h5><strong>【总和规则说明】</strong></h5>
        <p><strong>◎总和大小：</strong></br>
            所有8个开奖号码总和值小于84为总小；总和值大于84为总大，若总和值刚好等于84算和局(不计算输赢)。</p>

        <p><strong>◎总和单双：</strong></br>
            所有开奖号码数字加总值是单数为和单，如11、21；加总值是双数为和双，如22、40。</p>

        <p><strong>◎总和尾数大小：</strong></br>
            所有开奖号码数字加总值大于或等于5为总尾大，小于或等于4为总尾小。</p>

        <h5><strong>【龙虎规则说明】</strong></h5>
        <p><strong>◎龙n虎m：</strong></br>
            龙：第n球中奖号码大于第m球的中奖号码。如龙1虎8，第一球开出14第八球开出09。</br>
            虎：第n球中奖号码小于第m球的中奖号码。如龙1虎8，第一球开出09第八球开出14。</p>

    </div>
    <div class="help_col">
        <h5><strong>总则</strong></h5>
        <p>重庆幸运农场（以下简称幸运农场）经国家财政部批准，由中国福利彩票发行管理中心推出的一种全新快速开奖游戏。</br>
            重庆幸运农场每天开97期，每期间隔10分钟。北京时间（GMT+8）每天白天从上午10：00到次日2:00。 本公司重庆幸运农场具体游戏规则请参考彩种介绍。</p>
    </div>
</div>
<%@ include file="/include/include.js.jsp" %>
<%--<script src="${resRoot}/js/hall/play/Index.js?v=${rcVersion}"></script>--%>
<script type="text/javascript">
    curl(['site/hall/play/Index'], function(IntroducePlay) {
        introducePlay = new IntroducePlay();
    });
</script>
</body>
</html>
