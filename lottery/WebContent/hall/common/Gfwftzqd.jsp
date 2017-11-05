<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="Detailedlist Single wid1">

    <div class="layout at">
        <h1 class="at">投注清单</h1>
        <div class="boxt at reboxt">
            <div class="left">
                <table cellspacing="0" cellpadding="0" border="0" width="100%">
                    <tbody id="zhudanList">
                    <tr class="noRecord"><td>暂无投注项</td></tr>
                    </tbody>
                </table>
            </div><!--left-->
            <div class="right">
                <ul>
                    <li><a class="suiji1" href="javascript:void(0)" onclick="page.PlayWay.getSuiji(1)">随机一注</a></li>
                    <li><a class="suiji5" href="javascript:void(0)" onclick="page.PlayWay.getSuiji(5)">随机五注</a></li>
                    <%--<li class="clearLiZhudanbtn" sp="0"><a id="zhbtn" class="wdzhli" href="javascript:void(0)" onclick="page.PlayWay.renderZhuihao(null, this)"><span class="imgZh"></span>我要追号</a></li>--%>
                    <li><a href="javascript:void(0)" onclick="page.PlayWay.clearZhudan()"><img src="${resRoot}/themes/default/img/ico52.png" alt="">清空注单</a></li>
                </ul>
                <p id="zongtouInfo">总投 <span>0</span> 注，<span>0</span> 倍，共 <span>0</span> 元。</p>
                <a href="javascript:void(0)" class="ok" onclick="page.PlayWay.buyBtn()"><img src="${resRoot}/themes/default/img/ico54.png" alt="">确认投注</a>
            </div>
        </div>
    </div>
</div>
