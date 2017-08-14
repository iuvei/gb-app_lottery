<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <%@ include file="/include/include.head.jsp" %>
    <title>购彩大厅</title>
</head>

<body style="background-color: white">
<div class="help_list" style="width:99.9%">
    <div class="lis">
        <h5>北京PK10</h5>
        <ul>
            <li class="sli">常规玩法</li>
            <li>游戏说明</li>
        </ul>
    </div>
    <div class="help_col show">
        <h5><strong>【双面玩法】</strong></h5>
        <p><strong>◎双面>>大小</strong><br>
        <p>开出的号码大于或等于6为大，小于或等于5为小 。</p>
        <p><strong>◎双面>>单双</strong><br>
        <p> 号码为双数叫双，如4、6；号码为单数叫单，如3、5。</p>
        <p><strong>◎双面>>龙虎</strong><br>
        <p> 冠军龙虎	 * 龙：冠军号码大于第十名号码视为“龙”中奖，如冠军开出07，第十名开出03。<br>
            * 虎：冠军号码小于第十名号码视为“虎”中奖，如冠军开出03，第十名开出07。<br>
            亚军龙虎	 * 龙：亚军号码大于第九名号码视为“龙”中奖，如亚军开出07，第九名开出03。<br>
            * 虎：亚军号码小于第九名号码视为“虎”中奖，如亚军开出03，第九名开出07。<br>
            季军龙虎	 * 龙：季军号码大于第八名号码视为“龙”中奖，如季军开出07，第八名开出03。<br>
            * 虎：季军号码小于第八名号码视为“虎”中奖，如季军开出03，第八名开出07。<br>
            第四名龙虎	 * 龙：第四名号码大于第七名号码视为“龙”中奖，如第四名开出07，第七名开出03。<br>
            * 虎：第四名号码小于第七名号码视为“虎”中奖，如第四名开出03，第七名开出07。<br>
            第五名龙虎	 * 龙：第五名号码大于第六名号码视为“龙”中奖，如第五名开出07，第六名开出03。<br>
            * 虎：第五名号码小于第六名号码视为“虎”中奖，如第五名开出03，第六名开出07。</p>
        <h5><strong>【数字盘】</strong></h5>
        <p>冠军、亚军、季军、第四、第五、第六、第七、第八、第九、第十名出现的顺序与号码为派彩依据。
        如现场第一个开奖号码为3号，投注冠军为3则视为中奖，其它号码视为不中奖。</p>

    </div>
    <div class="help_col">
        <h5><strong>开奖说明</strong></h5>
        <p>“北京PK拾”是由中国福利彩票发行，北京福利彩票发行中心承销。<br>
            每日共开奖179期、每5分钟开奖1次。<br>
            开奖时间：早上9点至晚上12点。如开奖时间异动以中国福利彩票管理中心公告为准。</p>
    </div>
</div>
<%@ include file="/include/include.js.jsp" %>
<script type="text/javascript">
    curl(['site/hall/play/Index'], function(IntroducePlay) {
        introducePlay = new IntroducePlay();
    });
</script>
</body>
</html>
