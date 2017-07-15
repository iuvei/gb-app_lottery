<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<%-- 冠亚和 --%>
<div class="lot-content clearfix">
    <div class="fl main-left">
        <div class="hd clearfix">
            <div class="fl">快捷金额：<input type="text" class="txt"></div>
        </div>

        <div class="table-common">
            <table width="100%" border="1">
                <thead>
                <tr>
                    <th colspan="12">冠亚军和</th>
                </tr>
                </thead>

                <tbody>
                <tr>
                    <td colspan="3" class="pointer"><strong>3,4,18,19</strong></td>
                    <td colspan="2" class="pointer"><strong class="color-red pl">10.8</strong></td>
                    <td><input type="text" class="table-txt" data-name="3,4,18,19"/></td>

                    <td colspan="3" class="pointer"><strong>9,10,12,13</strong></td>
                    <td colspan="2" class="pointer"><strong class="color-red pl">2.7</strong></td>
                    <td><input type="text" class="table-txt" data-name="9,10,12,13"/></td>
                </tr>

                <tr>
                    <td colspan="3" class="pointer"><strong>5,6,16,17</strong></td>
                    <td colspan="2" class="pointer"><strong class="color-red pl">5.4</strong></td>
                    <td><input type="text" class="table-txt" data-name="5,6,16,17"/></td>

                    <td colspan="3" class="pointer"><strong>11</strong></td>
                    <td colspan="2" class="pointer"><strong class="color-red pl">8.64</strong></td>
                    <td><input type="text" class="table-txt" data-name="11"/></td>
                </tr>

                <tr>
                    <td colspan="3" class="pointer"><strong>7,8,14,15</strong></td>
                    <td colspan="2" class="pointer"><strong class="color-red pl">3.6</strong></td>
                    <td><input type="text" class="table-txt" data-name="7,8,14,15"/></td>
                    <td colspan="6">
                </tr>

                <tr>
                    <td class="pointer"><strong>和大</strong></td>
                    <td class="pointer"><strong class="color-red pl">1.95</strong></td>
                    <td><input type="text" class="table-txt" data-name="和大"/></td>

                    <td class="pointer"><strong>和小</strong></td>
                    <td class="pointer"><strong class="color-red pl">1.77</strong></td>
                    <td><input type="text" class="table-txt" data-name="和小"/></td>

                    <td class="pointer"><strong>和单</strong></td>
                    <td class="pointer"><strong class="color-red pl">1.77</strong></td>
                    <td><input type="text" class="table-txt" data-name="和单"/></td>

                    <td class="pointer"><strong>和双</strong></td>
                    <td class="pointer"><strong class="color-red pl">1.95</strong></td>
                    <td><input type="text" class="table-txt" data-name="和双"/></td>
                </tr>
                </tbody>
            </table>
        </div>

        <div class="btns">
            <button type="submit" class="btn btn-1">提交</button>
            <button class="btn btn-2">重设</button>
        </div>
    </div>

    <%@ include file="../include/include.rank.jsp" %>
</div>

<input type="hidden" id="playId" value="270" />
<script src="${resRoot}/js/hall/pk10/bjpk10/PlayWay.js?v=${rcVersion}"></script>
