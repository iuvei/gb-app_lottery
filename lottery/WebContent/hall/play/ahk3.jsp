<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>购彩大厅</title>
    <%@ include file="/include/include.head.jsp" %>
</head>

<body style="background-color: white">
<div class="help_list" style="width:99.9%">
    <div class="lis">
        <h5>安徽快3</h5>
        <ul>
            <li class="sli">常规玩法</li>
            <li>游戏说明</li>
        </ul>
    </div>
    <div class="help_col show">
        <h5><strong>【点数】</strong></h5>
        <p><strong>◎点数>>大小</strong><br>
            三个开奖号码总和值11~17 为大；总和值4~10 为小；若三个号码相同、则不算中奖。</p>
        <p><strong>◎点数>>单双</strong><br>
            三个开奖号码总和5、7、9、11、13、15、17为单；4、6、8、10、12、14、16为双；若三个号码相同、则不算中奖。</p>
        <p><strong>◎点数>>点数</strong><br>
            开奖号码总和值为4、5、6、7、8、9、10、11、12、13、14、15、16、17 时，即为中奖；<br>
            若开出3、18，则不算中奖。<br>
            举例：如开奖号码为1、2、3、总和值为6、则投注「6」即为中奖。</p>
        <h5><strong>【三军】</strong></h5>
        <p>三个开奖号码其中一个与所选号码相同时、即为中奖。<br>
        举例：如开奖号码为1、1、3，则投注三军1或三军3皆视为中奖。<br>
        备注：不论当局指定点数出现几次，仅派彩一次(不翻倍)。</p>
        <h5><strong>【围骰/全骰】</strong></h5>
        <p>围骰：开奖号码三字同号、且与所选择的围骰组合相符时，即为中奖。<br>
        全骰：全选围骰组合、开奖号码三字同号，即为中奖。</p>
        <h5><strong>【长牌】</strong></h5>
        <p>任选一长牌组合、当开奖结果任2码与所选组合相同时，即为中奖。<br>
        举例：如开奖号码为1、2、3、则投注长牌12、长牌23、长牌13皆视为中奖。</p>
        <h5><strong>【短牌】</strong></h5>
        <p>开奖号码任两字同号、且与所选择的短牌组合相符时，即为中奖。<br>
        举例：如开奖号码为1、1、3、则投注短牌1、1，即为中奖。</p>
    </div>
    <div class="help_col">
        <h5><strong>总则</strong></h5>
        <p>1.	根据《彩票管理条例》等有关规定，制定本规则。
            2.	中国福利彩票安徽省快三游戏（以下简称“快三”）由中国福利彩票发行管理中心和组织销售，安徽省福利彩票销售机构（以下称“安徽福彩机构”）在所辖区域内承销。
            3.	快三采用计算机网络系统发行，在安徽福彩机构设置的销售网点销售，定期开奖。
            4.	快三实行自愿购买，凡购买该彩票均被视为同意并遵守本规则。
            5.	不得向未成年人出售彩票或兑付奖金。
            本站安徽快三游戏每天进行80期，开奖时间为08:39至22:10，每隔10分钟开奖一次。快三采用专用电子开奖设备开奖，每期随机生成3个号码，作为当期中奖号码。<span style="color:#E53333;">开奖结果为三码 (百、十、个)。假设结果为1 、2 、3。</span></p>
    </div>
</div>
<%@ include file="/include/include.js.jsp" %>
<script src="${resRoot}/js/hall/play/Index.js?v=${rcVersion}"></script>

</body>
</html>
