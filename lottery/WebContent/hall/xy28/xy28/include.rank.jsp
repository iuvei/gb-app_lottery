<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="fr main-right cl-10 p-r-0">
    <div class="table-common table-border-color">
        <table width="100%" border="1">
            <tbody>
            <tr><td colspan="2">两面长龙排行</td></tr>
            </tbody>
        </table>
    </div>
</div>

<script type="text/html" id="template_rank_list">
    <div class="table-common table-border-color">
        <table width="100%" border="1">
            <tbody>
            <tr><td colspan="2">两面长龙排行</td></tr>
            <tr><td colspan="2">统计至第{{expect}}期</td></tr>
            {{each list as value index}}
                <tr>
                    <td width="142">{{value.betCodeMemo}}-{{value.winningNum}}</td>
                    <td>{{value.rankCount}}</td>
                </tr>
            {{/each}}
            </tbody>
        </table>
    </div>
</script>

