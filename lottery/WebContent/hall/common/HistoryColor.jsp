<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- 开奖历史模板 -->
<script type="text/html" id="template_openDataHistory">
    <li>
        <p>第{{number}}期</p>
        {{if list.length == 0}}
        <p style="margin-left:5px">开奖中</p>
        {{else}}
        {{each list as value}}
        <i class="round {{value.colour}}">{{value.num}}</i>
        {{/each}}
        {{/if}}
    </li>
</script>
<script type="text/html" id="template_recent1History">
    {{each list as value}}
        <span class="{{value.colour}}">{{value.num}}</span>
    {{/each}}
</script>