<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="game_tables">
    <table width="100%" border="0" class="game_tab" id="bottom_zs_table_head">
        <tbody>
        <tr>
            <th class="game_result choose" data-position="0">第一球</th>
            <th class="game_result" data-position="1">第二球</th>
            <th class="game_result" data-position="2">第三球</th>
            <th class="game_result" data-position="zh">总和</th>
        </tr>
        </tbody>
    </table>
    <table width="100%" border="0" class="game_tab" id="bottom_zs_table_select">
        <tbody>
        <tr>
            <th class="game_result choose" data-type="dx">大小</th>
            <th class="game_result" data-type="ds">单双</th>
            <th></th>
            <th></th>
        </tr>
        </tbody>
    </table>
    <div id="bottom_zs_table_content">
        <table id="bottom_zs_table_0_dx" width="100%" border="0" class="resultLoad" style="">
            <tbody>
            </tbody>
        </table>
    </div>
</div>

<script type="text/html"  id="template_result_list">
    {{each headList as head index}}
    <table id="bottom_zs_table_{{head}}_dx" width="100%" border="0" class="resultLoad" style="display:none">
        <tbody>
            {{each maxMap[head+'_dx'].maxY}}
                <tr class="resultLoad">
                    {{each maxMap[head+'_dx'].maxX}}
                        <td>&nbsp;</td>
                    {{/each}}
                </tr>
            {{/each}}
        </tbody>
    </table>
    <table id="bottom_zs_table_{{head}}_ds" width="100%" border="0" class="resultLoad" style="display:none">
        {{each maxMap[head+'_ds'].maxY}}
        <tr class="resultLoad">
            {{each maxMap[head+'_ds'].maxX}}
            <td>&nbsp;</td>
            {{/each}}
        </tr>
        {{/each}}
    </table>
    {{/each}}
</script>
