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
        <h5>幸运28</h5>
        <ul>
            <li class="sli">常规玩法</li>
            <li>开奖规则</li>
        </ul>
    </div>
    <div class="help_col show">
        <h5><strong>【混合玩法规则】</strong></h5>
        <p><strong>◎大小玩法：</strong></br>
            数字14-27为大 ；</br>
            数字0-13为小；</br>
            当期开奖号码和值，符合投注组合，即中奖</p>

        <p><strong>◎大小玩法：</strong></br>
            数字14-27为大 ；</br>
            数字0-13为小；</br>
            当期开奖号码和值，符合投注组合，即中奖</p>

        <p><strong>◎单双玩法：</strong></br>
            数字1，3，5，~27为单 ；</br>
            数字0，2，4，~26为双；</br>
            当期开奖号码和值，符合投注组合，即中奖</p>

        <p><strong>◎组合玩法：</strong></br>
            从大双,小单,大单,小双中至少选一注，当期开奖号码和值，符合投注组合，即中奖</p>

        <p><strong>◎极值玩法：</strong></br>
            数字0，1，2，3，4，5为极小 ；</br>
            数字22，23，24，25，26，27为极大；</br>
            当期开奖号码和值，符合投注组合，即中奖</p>
        <p><strong>◎波色玩法：</strong></br>
            绿波1，4，7，10，16，19，22，25；</br>
            蓝波2，5，8，11，17，20，23，26；</br>
            红波3，6，9，12，15，18，21，24；</br>
            当期开奖号码和值，符合投注组合，即中奖</p>
        <p><strong>◎豹子玩法：</strong></br>
            当期开奖号码三个数字相同即中奖</p>

        <h5><strong>【和值玩法规则】</strong></h5>
        <p><strong>◎和值玩法：</strong></br>
            从0-27中选取一个以上的数字，投注号码与开奖号码和值相同，即中奖</p>

        <h5><strong>【特码包三玩法规则】</strong></h5>
        <p><strong>◎特码包三玩法：</strong></br>
            从0-27中任选3个号码组成1注，任意一个选号与开奖号码和值相同，即中奖</p>
    </div>
    <div class="help_col">
        <h5><strong>总则</strong></h5>
        <p>幸运28是根据国家福利彩票北京快乐8创新的竞猜游戏。28个号码，押中即可获得奖励。每天从早上9:05～23:55；每5分钟一期。</p>
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
