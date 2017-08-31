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
        <h5>幸运飞艇</h5>
        <ul>
            <li class="sli">常规玩法</li>
            <li>游戏说明</li>
        </ul>
    </div>
    <div class="help_col show">
        <p>幸运飞艇（开奖网） 北京时间（GMT+8） 每天白天从中午13:04 开到凌晨04:04， 每5分钟开一次奖, 每天开奖180期</p>
        <h5><strong>【双面玩法】</strong></h5>
        <p><strong>◎1～10 两面：</strong>指 单、双；大、小。</p>
        <p><strong>◎单、双：</strong>号码为双数叫双，如4、8 ；号码为单数叫单， 如 5、9。</p>
        <p><strong>◎大、小：</strong>开出之号码大于或等于6为大，小于或等于5 为小。</p>
        <p><strong>◎1～5龙虎:</strong></br>
            冠　军 龙/虎：“第一名”船号大于“第十名”船号视为【龙】中奖、反之小于视为【虎】中奖，其余视为不中奖。</br>
            亚　军 龙/虎：“第二名”船号大于“第九名”船号视为【龙】中奖、反之小于视为【虎】中奖，其余视为不中奖。</br>
            第三名 龙/虎：“第三名”船号大于“第八名”船号视为【龙】中奖、反之小于视为【虎】中奖，其余视为不中奖。</br>
            第四名 龙/虎：“第四名”船号大于“第七名”船号视为【龙】中奖、反之小于视为【虎】中奖，其余视为不中奖。</br>
            第五名 龙/虎：“第五名”船号大于“第六名”船号视为【龙】中奖、反之小于视为【虎】中奖，其余视为不中奖。</br>
        </p>
        <h5><strong>【排名1～10】</strong></h5>
        <p><strong>◎第一名～第十名 船号指定：</strong>每一个船号为一投注组合，开奖结果“投注船号”对应所投名次视为中奖，其余情形视为不中奖。</p>

        <h5><strong>【冠、亚军 组合】</strong></h5>
        <p><strong>◎亚军 龙/虎：</strong></br>
        冠亚和单双：“冠亚和值”为单视为投注“单”的注单视为中奖，为双视为投注“双”的注单视为中奖，其余视为不中奖。</br>
        冠亚和大小：“冠亚和值”大于11时投注“大”的注单视为中奖，小于或等于11时投注“小”的注单视为中奖，其余视为不中奖。</br>
        冠亚和指定：“冠亚和值”可能出现的结果为3～19， 投中对应“冠亚和值”数字的视为中奖，其余视为不中奖。</br>
        冠亚和半特： 以冠亚和值的大小与单双为一个投注组合；当冠亚和值符合投注组合，即视为中奖，其余情形视为不中奖:如11为小单,16为大双。
        </p>
    </div>
    <div class="help_col">
        <h5><strong>开奖说明</strong></h5>
        <p>幸运飞艇 北京时间（GMT+8）,每5分钟开一次奖, 每天开奖180期</p>
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
