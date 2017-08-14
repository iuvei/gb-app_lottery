<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<div class="lot-content clearfix">
    <div class="fl main-left">
        <div class="hd clearfix">
            <div class="fl">
                快捷金额：
                <input type="text" class="txt">
            </div>
        </div>
        <%@ include file="sum/Sum.jsp" %>

        <div class="btns">
            <button type="submit" class="btn btn-1">提交</button>
            <button class="btn btn-2">重设</button>
        </div>
    </div>

    <div class="fr main-right main-right-xyft cl-10 lm_height">

    </div>
</div>
<script src="${resRoot}/js/hall/pk10/xyft/PlayWay.js?v=${rcVersion}"></script>

<script>
    var playGroupId = 14;
    var playId = 319;
    var playGroupName = '冠、亚军组合';

    $(function () {
        //获取30期开奖数据


        $(".head_table th").eq(0).addClass('th_bg');

        $(".head_table th").bind('click', function () {
            $(".head_table th").each(function (index, value) {
                var obj = $(this);
                if (obj.hasClass('th_bg')) {
                    obj.removeClass('th_bg');
                }
            });
            $(".body_table tbody").each(function (n, m) {
                $(this).hide();
            });
            var calss_name = $(this).attr('class');
            if (calss_name == 'tab_one') {
                $(".gydx").show();
            } else if (calss_name == 'tab_two') {
                $(".gyhz").show();
            } else if (calss_name == 'tab_three') {
                $(".gyds").show();
            }
            $(this).addClass('th_bg');


        });
    });


    //冠亚军和值大小长龙分析
    function gyDxjs(data) {
        var arr_res = [];
        var lieYiDongFlag = false;
        var n = 0;
        var td_col = 31;

        //第二选项卡中的变量值
        var arr_hzInfo = [];
        var tab2_lieYiDongFlag = false;
        var tab2_td_col = 31;
        var tab2_n = 0;

        //第三个选项卡中的变量值
        var arr_dsInfo = [];
        var tab3_lieYiDongFlag = false;
        var tab3_td_col = 31;
        var tab3_n = 0;

        for (var m = 0; m < data.length; m++) {
            var result = {
                qiHaoInfo: {content: '内容', flag_dx: '大小'}
            };
            var resultHz = {
                hzInfo: {content: '内容', flag_hz: 0}
            };
            var resultDs = {
                dsInfo: {content: '内容', flag_ds: '单双'}
            };

            arr_res[m] = result.qiHaoInfo; //初始化容器
            arr_hzInfo[m] = resultHz.hzInfo; //初始化容器
            arr_dsInfo[m] = resultDs.dsInfo; //初始化容器


            var openCode = data[m].openCode.split(",");

            var num1 = Tools.parseInt(openCode[0]);
            var num2 = Tools.parseInt(openCode[1]);
            var qiStr = data[m].number;
            var qiHaoma = data[m].openCode;
            var qiContent = '第' + qiStr + '期, 号码' + qiHaoma;


            var result_num = num1 + num2;

            if (result_num > 11) {
                arr_res[m].flag_dx = '大';
            } else {
                arr_res[m].flag_dx = '小';
            }

            arr_hzInfo[m].flag_hz = result_num; //存储冠亚和值

            if (result_num % 2 == 0) {
                arr_dsInfo[m].flag_ds = '双';
            } else {
                arr_dsInfo[m].flag_ds = '单';
            }

            arr_res[m].content = qiContent; //存储号码和期号
            arr_hzInfo[m].content = qiContent;
            arr_dsInfo[m].content = qiContent;

        }


        //遍历冠亚和大小写入表格中
        for (var i = 0; i < arr_res.length; i++) {
            if (i > 0 && i < arr_res.length - 1) {
                if (arr_res[i].flag_dx != arr_res[i - 1].flag_dx) {
                    td_col--; //发现前一个值不等换行 右移动一列单元格
                    n = 0;//发现前一个值不等换行 初始化为第一行
                    lieYiDongFlag = true;
                }

                if (arr_hzInfo[i].flag_hz != arr_hzInfo[i - 1].flag_hz) {
                    tab2_td_col--;
                    tab2_n = 0;
                    tab2_lieYiDongFlag = true;
                }

                if (arr_dsInfo[i].flag_ds != arr_dsInfo[i - 1].flag_ds) {
                    tab3_td_col--;
                    tab3_n = 0;
                    tab3_lieYiDongFlag = true;
                }
            }

            //第一个选项卡
            if (td_col >= 0) {
                if (arr_res[i].flag_dx == '小') {
                    $("#rmTr" + n + " td").eq(td_col).addClass('dishReload_small');
                    $("#rmTr" + n + " td").eq(td_col).attr('title', arr_res[i].content);
                    n++;
                } else {
                    $("#rmTr" + n + " td").eq(td_col).addClass('dishReload_da');
                    $("#rmTr" + n + " td").eq(td_col).attr('title', arr_res[i].content);
                    n++;
                }

            }

            //写完六行
            if (n == 6) {
                n = 0;  //初始化为第一行
                //如写满六行发现刚好也变值这时判断上面的是否已经移动过列（没有则移动列否则不移动）
                if (lieYiDongFlag != true) {
                    td_col--; //左移动一列
                }
                //初始化左移动标记
                lieYiDongFlag = false;
            }


            //第二个选项卡
            if (tab2_td_col >= 0) {
                $("#rm2Tr" + tab2_n + " td").eq(tab2_td_col).html(arr_hzInfo[i].flag_hz);
                $("#rm2Tr" + tab2_n + " td").eq(tab2_td_col).attr('title', arr_hzInfo[i].content);
                tab2_n++;
            }

            //写完六行
            if (tab2_n == 6) {
                tab2_n = 0;  //初始化为第一行
                //如写满六行发现刚好也变值这时判断上面的是否已经移动过列（没有则移动列否则不移动）
                if (tab2_lieYiDongFlag != true) {
                    tab2_td_col--; //左移动一列
                }
                //初始化左移动标记
                tab2_lieYiDongFlag = false;
            }


            //第三个选项卡
            if (tab3_td_col >= 0) {
                if (arr_dsInfo[i].flag_ds == '单') {
                    $("#rm3Tr" + tab3_n + " td").eq(tab3_td_col).addClass('dishReload_dan');
                    $("#rm3Tr" + tab3_n + " td").eq(tab3_td_col).attr('title', arr_dsInfo[i].content);
                    tab3_n++;
                } else {
                    $("#rm3Tr" + tab3_n + " td").eq(tab3_td_col).addClass('dishReload_shuang');
                    $("#rm3Tr" + tab3_n + " td").eq(tab3_td_col).attr('title', arr_dsInfo[i].content);
                    tab3_n++;
                }

            }

            //写完六行
            if (tab3_n == 6) {
                tab3_n = 0;  //初始化为第一行
                //如写满六行发现刚好也变值这时判断上面的是否已经移动过列（没有则移动列否则不移动）
                if (tab3_lieYiDongFlag != true) {
                    tab3_td_col--; //左移动一列
                }
                //初始化左移动标记
                tab3_lieYiDongFlag = false;
            }
        }
    }

    function getZhudan() {
        var betForm = {
            totalMoney: 0,
            sscBetList: [],
            totalZhushu: 0
        };

        $(".main-left .table-common .touzhuArea input").each(function () {
            var inputMoney = $(this).val();
            if (typeof inputMoney != 'undefined' && inputMoney != '') {
                betForm.sscBetList.push({
                    playGroupName: playGroupName,
                    playGroupId: playGroupId,
                    number: $("#number").data("number"),
                    playId: playId,
                    zhushu: 1,
                    perMoney: inputMoney,
                    content: $(this).data("name"),
                    playPlId: $(this).data("plid"),
                    playPl: $(this).data("pl")
                });
                betForm.totalMoney = add(betForm.totalMoney, inputMoney);
                betForm.totalZhushu = add(betForm.totalZhushu, 1);
            }
        });
        return betForm;
    }

    function checkZhudan() {
        return true;
    }
</script>