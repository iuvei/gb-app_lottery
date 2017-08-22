<%--@elvariable id="odds" type="Map<java.lang.String,so.wwb.gamebox.model.company.lottery.po.SiteLotteryOdd>"--%>
<%--@elvariable id="lottery" type="so.wwb.gamebox.model.company.lottery.po.SiteLotteryOdd"--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<div class="lot-content clearfix">
    <div class="fl main-left">
        <div class="hd rehd clearfix" id="toptouzhu">
            <div class="fl">
                快捷金额：
                <input type="text" class="txt">
            </div>
            <div class="kjanniu">
                <a href="javascript:void(0)" class="img-50" data-num="50"></a>
                <a href="javascript:void(0)" class="img-100" data-num="100"></a>
                <a href="javascript:void(0)" class="img-500" data-num="500"></a>
                <a href="javascript:void(0)" class="img-1000" data-num="1000"></a>
                <a href="javascript:void(0)" class="img-5000" data-num="5000"></a>
                <a href="javascript:void(0)" class="img-10000" data-num="10000"></a>
            </div>
        </div>

        <div class="table-common">
            <table width="100%" border="1">
                <thead>
                <tr>
                    <th width="53">号码</th>
                    <th width="62">赔率</th>
                    <th width="67">金额</th>
                    <th>号码</th>
                    <th width="53">号码</th>
                    <th width="62">赔率</th>
                    <th width="67">金额</th>
                    <th>号码</th>
                </tr>
                </thead>

                <tbody>
                <tr>
                    <td style="cursor: pointer;"><strong>鼠</strong></td>
                    <td style="cursor: pointer;"><strong class="color-red pl" data-plid="6747">2.1</strong></td>
                    <td><input type="text" class="table-txt" data-name="鼠" data-plid="6747"></input></td>
                    <td style="cursor: pointer;">
                        <span class="ball-icon ball-10"></span>
                        <span class="ball-icon ball-22"></span>
                        <span class="ball-icon ball-34"></span>
                        <span class="ball-icon ball-46"></span>
                    </td>
                    <td style="cursor: pointer;"><strong>牛</strong></td>
                    <td style="cursor: pointer;"><strong class="color-red pl" data-plid="6748">2.1</strong></td>
                    <td><input type="text" class="table-txt" data-name="牛" data-plid="6748"></input></td>
                    <td style="cursor: pointer;">
                        <span class="ball-icon ball-09"></span>
                        <span class="ball-icon ball-21"></span>
                        <span class="ball-icon ball-33"></span>
                        <span class="ball-icon ball-45"></span>
                    </td>
                </tr>
                <tr>
                    <td style="cursor: pointer;"><strong>虎</strong></td>
                    <td style="cursor: pointer;"><strong class="color-red pl" data-plid="6749">2.1</strong></td>
                    <td><input type="text" class="table-txt" data-name="虎" data-plid="6749"></input></td>
                    <td style="cursor: pointer;">
                        <span class="ball-icon ball-08"></span>
                        <span class="ball-icon ball-20"></span>
                        <span class="ball-icon ball-32"></span>
                        <span class="ball-icon ball-44"></span>
                    </td>
                    <td style="cursor: pointer;"><strong>兔</strong></td>
                    <td style="cursor: pointer;"><strong class="color-red pl" data-plid="6750">2.1</strong></td>
                    <td><input type="text" class="table-txt" data-name="兔" data-plid="6750"></input></td>
                    <td style="cursor: pointer;">
                        <span class="ball-icon ball-07"></span>
                        <span class="ball-icon ball-19"></span>
                        <span class="ball-icon ball-31"></span>
                        <span class="ball-icon ball-43"></span>
                    </td>
                </tr>
                <tr>
                    <td style="cursor: pointer;"><strong>龙</strong></td>
                    <td style="cursor: pointer;"><strong class="color-red pl" data-plid="6751">2.1</strong></td>
                    <td><input type="text" class="table-txt" data-name="龙" data-plid="6751"></input></td>
                    <td style="cursor: pointer;">
                        <span class="ball-icon ball-06"></span>
                        <span class="ball-icon ball-18"></span>
                        <span class="ball-icon ball-30"></span>
                        <span class="ball-icon ball-42"></span>
                    </td>
                    <td style="cursor: pointer;"><strong>蛇</strong></td>
                    <td style="cursor: pointer;"><strong class="color-red pl" data-plid="6752">2.1</strong></td>
                    <td><input type="text" class="table-txt" data-name="蛇" data-plid="6752"></input></td>
                    <td style="cursor: pointer;">
                        <span class="ball-icon ball-05"></span>
                        <span class="ball-icon ball-17"></span>
                        <span class="ball-icon ball-29"></span>
                        <span class="ball-icon ball-41"></span>
                    </td>
                </tr>
                <tr>
                    <td style="cursor: pointer;"><strong>马</strong></td>
                    <td style="cursor: pointer;"><strong class="color-red pl" data-plid="6753">2.1</strong></td>
                    <td><input type="text" class="table-txt" data-name="马" data-plid="6753"></input></td>
                    <td style="cursor: pointer;">
                        <span class="ball-icon ball-04"></span>
                        <span class="ball-icon ball-16"></span>
                        <span class="ball-icon ball-28"></span>
                        <span class="ball-icon ball-40"></span>
                    </td>
                    <td style="cursor: pointer;"><strong>羊</strong></td>
                    <td style="cursor: pointer;"><strong class="color-red pl" data-plid="6754">2.1</strong></td>
                    <td><input type="text" class="table-txt" data-name="羊" data-plid="6754"></input></td>
                    <td style="cursor: pointer;">
                        <span class="ball-icon ball-03"></span>
                        <span class="ball-icon ball-15"></span>
                        <span class="ball-icon ball-27"></span>
                        <span class="ball-icon ball-39"></span>
                    </td>
                </tr>
                <tr>
                    <td style="cursor: pointer;"><strong>猴</strong></td>
                    <td style="cursor: pointer;"><strong class="color-red pl" data-plid="6755">2.1</strong></td>
                    <td><input type="text" class="table-txt" data-name="猴" data-plid="6755"></input></td>
                    <td style="cursor: pointer;">
                        <span class="ball-icon ball-02"></span>
                        <span class="ball-icon ball-14"></span>
                        <span class="ball-icon ball-26"></span>
                        <span class="ball-icon ball-38"></span>
                    </td>
                    <td style="cursor: pointer;"><strong>鸡</strong></td>
                    <td style="cursor: pointer;"><strong class="color-red pl" data-plid="6756">1.8</strong></td>
                    <td><input type="text" class="table-txt" data-name="鸡" data-plid="6756"></input></td>
                    <td style="cursor: pointer;">
                        <span class="ball-icon ball-01"></span>
                        <span class="ball-icon ball-13"></span>
                        <span class="ball-icon ball-25"></span>
                        <span class="ball-icon ball-37"></span>
                        <span class="ball-icon ball-49"></span>
                    </td>
                </tr>
                <tr>
                    <td style="cursor: pointer;"><strong>狗</strong></td>
                    <td style="cursor: pointer;"><strong class="color-red pl" data-plid="6757">2.1</strong></td>
                    <td><input type="text" class="table-txt" data-name="狗" data-plid="6757"></input></td>
                    <td style="cursor: pointer;">
                        <span class="ball-icon ball-12"></span>
                        <span class="ball-icon ball-24"></span>
                        <span class="ball-icon ball-36"></span>
                        <span class="ball-icon ball-48"></span>
                    </td>
                    <td style="cursor: pointer;"><strong>猪</strong></td>
                    <td style="cursor: pointer;"><strong class="color-red pl" data-plid="6758">2.1</strong></td>
                    <td><input type="text" class="table-txt" data-name="猪" data-plid="6758"></input></td>
                    <td style="cursor: pointer;">
                        <span class="ball-icon ball-11"></span>
                        <span class="ball-icon ball-23"></span>
                        <span class="ball-icon ball-35"></span>
                        <span class="ball-icon ball-47"></span>
                    </td>
                </tr></tbody>
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
    curl(['site/hall/lhc/hklhc/PlayWay'], function(PlayWay) {
        page.playWay = new PlayWay();
    });
</script>