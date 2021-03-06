<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<%--六合彩右边下注部分--%>
<div class="fr main-right cl-10 p-r-0">
    <div class="table-common table-border-color">
        <table width="100%" border="1">
            <tbody>
            <tr>
                <td><input type="checkbox" name="checkbox" value="checkbox" data-nums="25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48"></td>
                <td>大</td>
                <td><input type="checkbox" name="checkbox" value="checkbox" data-nums="01,02,03,04,05,06,07,08,09,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24"></td>
                <td>小</td>
            </tr>
            <tr>
                <td><input type="checkbox" name="checkbox" value="checkbox" data-nums="01,03,05,07,09,11,13,15,17,19,21,23,25,27,29,31,33,35,37,39,41,43,45,47"></td>
                <td>单</td>
                <td><input type="checkbox" name="checkbox" value="checkbox" data-nums="02,04,06,08,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,42,44,46,48"></td>
                <td>双</td>
            </tr>
            <tr>
                <td><input type="checkbox" name="checkbox" value="checkbox" data-nums="01,07,12,18,23,29,30,34,45,05,16,21,27,32,38,43,03,09,10,14,25,36,41,47"></td>
                <td>合单</td>
                <td><input type="checkbox" name="checkbox" value="checkbox" data-nums="02,08,13,19,24,35,40,46,06,11,17,22,28,33,44,04,15,20,26,37,42,48,31,39"></td>
                <td>合双</td>
            </tr>
            <tr>
                <td><input type="checkbox" name="checkbox" value="checkbox" data-nums="25,27,29,31,33,35,37,39,41,43,45,47"></td>
                <td>大单</td>
                <td><input type="checkbox" name="checkbox" value="checkbox" data-nums="01,03,05,07,09,11,13,15,17,19,21,23"></td>
                <td>小单</td>
            </tr>
            <tr>
                <td><input type="checkbox" name="checkbox" value="checkbox" data-nums="26,28,30,32,34,36,38,40,42,44,46,48"></td>
                <td>大双</td>
                <td><input type="checkbox" name="checkbox" value="checkbox" data-nums="02,04,06,08,10,12,14,16,18,20,22,24"></td>
                <td>小双</td>
            </tr>
            <tr>
                <td><input type="checkbox" name="checkbox" value="checkbox" data-nums="05,06,07,08,09,15,16,17,18,19,25,26,27,28,29,35,36,37,38,39,45,46,47,48"></td>
                <td>尾大</td>
                <td><input type="checkbox" name="checkbox" value="checkbox" data-nums="01,02,03,04,10,11,12,13,14,20,21,22,23,24,30,31,32,33,34,40,41,42,43,44"></td>
                <td>尾小</td>
            </tr>
            <tr>
                <td><input type="checkbox" name="checkbox" value="checkbox" zodiac="鼠" data-nums="${fn:join(zodiacNum['鼠'], ',')}"></td>
                <td>鼠</td>
                <td><input type="checkbox" name="checkbox" value="checkbox" zodiac="牛" data-nums="${fn:join(zodiacNum['牛'], ',')}"></td>
                <td>牛</td>
            </tr>
            <tr>
                <td><input type="checkbox" name="checkbox" value="checkbox" zodiac="虎" data-nums="${fn:join(zodiacNum['虎'], ',')}"></td>
                <td>虎</td>
                <td><input type="checkbox" name="checkbox" value="checkbox" zodiac="兔" data-nums="${fn:join(zodiacNum['兔'], ',')}"></td>
                <td>兔</td>
            </tr>
            <tr>
                <td><input type="checkbox" name="checkbox" value="checkbox" zodiac="龙" data-nums="${fn:join(zodiacNum['龙'], ',')}"></td>
                <td>龙</td>
                <td><input type="checkbox" name="checkbox" value="checkbox" zodiac="蛇" data-nums="${fn:join(zodiacNum['蛇'], ',')}"></td>
                <td>蛇</td>
            </tr>
            <tr>
                <td><input type="checkbox" name="checkbox" value="checkbox" zodiac="马" data-nums="${fn:join(zodiacNum['马'], ',')}"></td>
                <td>马</td>
                <td><input type="checkbox" name="checkbox" value="checkbox" zodiac="羊" data-nums="${fn:join(zodiacNum['羊'], ',')}"></td>
                <td>羊</td>
            </tr>
            <tr>
                <td><input type="checkbox" name="checkbox" value="checkbox" zodiac="猴" data-nums="${fn:join(zodiacNum['猴'], ',')}"></td>
                <td>猴</td>
                <td><input type="checkbox" name="checkbox" value="checkbox" zodiac="鸡" data-nums="${fn:join(zodiacNum['鸡'], ',')}"></td>
                <td>鸡</td>
            </tr>
            <tr>
                <td><input type="checkbox" name="checkbox" value="checkbox" zodiac="狗" data-nums="${fn:join(zodiacNum['狗'], ',')}"></td>
                <td>狗</td>
                <td><input type="checkbox" name="checkbox" value="checkbox" zodiac="猪" data-nums="${fn:join(zodiacNum['猪'], ',')}"></td>
                <td>猪</td>
            </tr>
            <tr>
                <td><input type="checkbox" name="checkbox" value="checkbox" data-nums="29,30,34,35,40,45,46"></td>
                <td><span class="color-red">红</span>大</td>
                <td><input type="checkbox" name="checkbox" value="checkbox" data-nums="01,02,07,08,12,13,18,19,23,24"></td>
                <td><span class="color-red">红</span>小</td>
            </tr>
            <tr>
                <td><input type="checkbox" name="checkbox" value="checkbox" data-nums="01,07,13,19,23,29,35,45"></td>
                <td><span class="color-red">红</span>单</td>
                <td><input type="checkbox" name="checkbox" value="checkbox" data-nums="02,08,12,18,24,30,34,40,46"></td>
                <td><span class="color-red">红</span>双</td>
            </tr>
            <tr>
                <td><input type="checkbox" name="checkbox" value="checkbox" data-nums="25,26,31,36,37,41,42,47,48"></td>
                <td><span class="color-blue">蓝</span>大</td>
                <td><input type="checkbox" name="checkbox" value="checkbox" data-nums="03,04,09,10,14,15,20"></td>
                <td><span class="color-blue">蓝</span>小</td>
            </tr>
            <tr>
                <td><input type="checkbox" name="checkbox" value="checkbox" data-nums="03,09,15,25,31,37,41,47"></td>
                <td><span class="color-blue">蓝</span>单</td>
                <td><input type="checkbox" name="checkbox" value="checkbox" data-nums="04,10,14,20,26,36,42,48"></td>
                <td><span class="color-blue">蓝</span>双</td>
            </tr>
            <tr>
                <td><input type="checkbox" name="checkbox" value="checkbox" data-nums="27,28,32,33,38,39,43,44"></td>
                <td><span class="color-green">绿</span>大</td>
                <td><input type="checkbox" name="checkbox" value="checkbox" data-nums="05,06,11,16,17,21,22"></td>
                <td><span class="color-green">绿</span>小</td>
            </tr>
            <tr>
                <td><input type="checkbox" name="checkbox" value="checkbox" data-nums="05,11,17,21,27,33,39,43"></td>
                <td><span class="color-green">绿</span>单</td>
                <td><input type="checkbox" name="checkbox" value="checkbox" data-nums="06,16,22,28,32,38,44"></td>
                <td><span class="color-green">绿</span>双</td>
            </tr>
            <tr>
                <td><input type="checkbox" name="checkbox" value="checkbox" data-nums="01,02,07,08,12,13,18,19,23,24,29,30,34,35,40,45,46"></td>
                <td>红波</td>
                <td><input type="checkbox" name="checkbox" value="checkbox" data-nums="03,04,09,10,14,15,20,25,26,31,36,37,41,42,47,48"></td>
                <td>蓝波</td>
            </tr>
            <tr>
                <td><input type="checkbox" name="checkbox" value="checkbox" data-nums="05,06,11,16,17,21,22,27,28,32,33,38,39,43,44,49"></td>
                <td>绿波</td>
                <td><input type="checkbox" name="checkbox" value="checkbox" data-nums="01,02,03,04,05,06,07,08,09,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49"></td>
                <td>全选</td>
            </tr>
            </tbody>
        </table>
    </div>
</div>