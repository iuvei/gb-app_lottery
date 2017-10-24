<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!-- 时时彩官方玩法模板 -->
<script type="text/html" id="template_touzhu">
    <tr
            data-show_content="{{showContent}}"
            data-show_play_name="{{showPlayName}}"
            data-bet_content="{{betContent}}"
            data-bet_per_money="{{betPerMoney}}"
            data-bet_zhushu="{{betZhushu}}"
            data-bet_total_money="{{betTotalMoney}}"
            data-bet_mode="{{betMode}}"
            data-bet_play_group_id="{{betPlayGroupId}}"
            data-bet_beishu="{{betBeishu}}"
            data-bet_fandian="{{betFandian}}"
            data-bet_play_pl="{{betPlayPl}}"
            data-bet_play_code="{{betPlayCode}}"
            data-bet_play_id="{{betPlayId}}"
            data-bet_play_pl_id="{{betPlayPlId}}"
            class="re_touzhu_tem"
    >
        <td class="span_1">
            [{{showPlayName}}]
            <br />
            {{showContent}}
        </td>
        <td class="span_2">
            {{if betMode == 1}}
            元
            {{else if betMode == 10}}
            角
            {{else if betMode == 100}}
            分
            {{/if}}
        </td>
        <td class="span_3">
            {{betZhushu}}注
        </td>
        <td class="span_4">
            {{betPerMoney}}
        </td>
        <td class="span_5">
            {{betPlayPl}}/{{betFandian}}%
        </td>
        <td class="span_6" title="删除">
            <a href="javascript:void(0)" onclick="page.PlayWay.removeThisItem(this)"><img src="${resRoot}/themes/default/img/ico53.png" alt=""></a>
        </td>
    </tr>
</script>
<script type="text/html" id="template_moreZhudan">
    <div id="moreZhudan" class="moreZhudan" style="top:{{top}}px;left:{{left}}px">
        <div class="box">
            <div class="line">
                <span>玩法：[{{showPlayName}}]</span>
            </div>
            <div class="line">
                <span>号码：{{showContent}}</span>
            </div>
            <div class="line">
                <span>模式:{{if showMode == 1}}元{{else if showMode == 10}}角{{else if showMode == 100}}分{{/if}}模式, 奖金&nbsp;{{showPlayPl}}, 返点&nbsp;{{showFandian}}%</span>
            </div>
            <div class="line">
                <span>包含&nbsp;{{betZhushu}}&nbsp;注，每注金额&nbsp;{{betPerMoney}}&nbsp;
                {{if showMode == 1}}
                元
                {{else if showMode == 10}}
                角
                {{else if showMode == 100}}
                分
                {{/if}}
                ，{{bet_beishu}}倍
                </span>
            </div>
            <div class="line">
                <span>共计&nbsp;{{betTotalMoney}}&nbsp;元</span>
            </div>
        </div>
    </div>
</script>
<%--滑动条模板--%>
<script type="text/html" id="template_jRange">
    <div class="add_spot">
        <div class="left releft">
            <div class="sopt_wrap">
                <div class="slide_sp dxds-i">
                    奖金/返点
                    <div class="cl-1003">
                        <div class="cl-1004">
                            <input type="hidden" class="slider-input"/>
                        </div>
                    </div>
                    <i><var class="jiangjin-change" id="jiangjin-change">0</var><var>&nbsp;/&nbsp;</var><var class="fandian-bfb" id="fandian-bfb">0%</var></i>
                </div>
                <div class="reduce">
                    <a class="fl">-</a>
                    <input
                            data-beishu="1"
                            type="text"
                            value="1"
                            id="inputBeishu"
                            onkeyup="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}"
                            onafterpaste="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'0')}else{this.value=this.value.replace(/\D/g,'')}"
                    >
                    <a class="fr">+</a>
                    <span>倍</span>
                </div>
                <div class="down" style="width: 25px;">
                    <input type="text" value="2" id="inputMoney" data-money="2" disabled="disabled">
                    <%--<span></span>--%>
                    <div class="down_menu">
                        <i>2</i>
                    </div>
                </div>
                <div class="yjf-wrap">
                    <span class="mode_select selected" data-value="1">元</span>
                    <span class="mode_select" data-value="10">角</span>
                    <span class="mode_select" data-value="100">分</span>
                </div>
            </div>
            <p class="p1">
                您选择了 <i class="i0">0</i> 注，<i class="i1 i_beishu">1</i> 倍，返还 <i class="i1 i_fanD">0</i> 元，共投注 <i class="i1 i_money">0</i>&nbsp;元。
            </p>
        </div>
        <div class="rigth">
            <a href="javascript:void(0)" onclick="page.PlayWay.tjzd()"><img src="${resRoot}/themes/default/img/ico65.png" alt="">添加注单</a>
        </div>
    </div>
</script>