<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/include/include.inc.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>载入中...</title>
    <style type="text/css">
        /*html {
            height: 100%;
            background: #e35b03;
            background: -moz-linear-gradient(-45deg,  #e35b03 0%, #000000 100%);
            background: -webkit-gradient(linear, left top, right bottom, color-stop(0%,#e35b03), color-stop(100%,#000000));
            background: -webkit-linear-gradient(-45deg,  #e35b03 0%,#000000 100%);
            background: -o-linear-gradient(-45deg,  #e35b03 0%,#000000 100%);
            background: -ms-linear-gradient(-45deg,  #e35b03 0%,#000000 100%);
            background: linear-gradient(135deg,  #e35b03 0%,#000000 100%);
            background-attachment: fixed;
        }*/
        body {margin: 0; background: #000000;}
        #loading{height: 100%; width: 100%; position: fixed; z-index: 1; margin-top: 0; top: 0;}
        #loading-center{width: 100%; height: 100%; position: relative;}
        #loading-center-absolute{position: absolute; left: 50%; top: 50%; height: 60px; width: 60px; margin-top: -30px; margin-left: -30px; -webkit-animation: loading-center-absolute 1s infinite; animation: loading-center-absolute 1s infinite;}
        .object{width: 20px; height: 20px; background-color: #FFF; float: left; -moz-border-radius: 50% 50% 50% 50%; -webkit-border-radius: 50% 50% 50% 50%; border-radius: 50% 50% 50% 50%; margin-right: 20px; margin-bottom: 20px;}
        .object:nth-child(2n+0){margin-right: 0px;}
        #object_one{-webkit-animation: object_one 1s infinite; animation: object_one 1s infinite; background-color: #14a0ef;}
        #object_two{-webkit-animation: object_two 1s infinite; animation: object_two 1s infinite; background-color: #ecd424;}
        #object_three{-webkit-animation: object_three 1s infinite; animation: object_three 1s infinite; background-color: #f53a0c;}
        #object_four{-webkit-animation: object_four 1s infinite; animation: object_four 1s infinite; background-color: #1adc1a;}
        @-webkit-keyframes loading-center-absolute{100%{-ms-transform: rotate(360deg); -webkit-transform: rotate(360deg); transform: rotate(360deg);} }
        @keyframes loading-center-absolute{100%{-ms-transform: rotate(360deg); -webkit-transform: rotate(360deg); transform: rotate(360deg);} }
        @-webkit-keyframes object_one{50%{-ms-transform: translate(20px,20px); -webkit-transform: translate(20px,20px); transform: translate(20px,20px);} }
        @keyframes object_one{50%{-ms-transform: translate(20px,20px); -webkit-transform: translate(20px,20px); transform: translate(20px,20px);} }
        @-webkit-keyframes object_two{50%{-ms-transform: translate(-20px,20px); -webkit-transform: translate(-20px,20px); transform: translate(-20px,20px);} }
        @keyframes object_two{50%{-ms-transform: translate(-20px,20px); -webkit-transform: translate(-20px,20px); transform: translate(-20px,20px);} }
        @-webkit-keyframes object_three{50%{-ms-transform: translate(20px,-20px); -webkit-transform: translate(20px,-20px); transform: translate(20px,-20px);} }
        @keyframes object_three{50%{-ms-transform: translate(20px,-20px); -webkit-transform: translate(20px,-20px); transform: translate(20px,-20px);} }
        @-webkit-keyframes object_four{50%{-ms-transform: translate(-20px,-20px); -webkit-transform: translate(-20px,-20px); transform: translate(-20px,-20px);} }
        @keyframes object_four{50%{-ms-transform: translate(-20px,-20px); -webkit-transform: translate(-20px,-20px); transform: translate(-20px,-20px);} }
    </style>
</head>

<body>
    <div id="loading">
        <div id="loading-center">
            <div id="loading-center-absolute">
                <div class="object" id="object_one"></div>
                <div class="object" id="object_two"></div>
                <div class="object" id="object_three"></div>
                <div class="object" id="object_four"></div>
            </div>
        </div>
    </div>
    <script>
        language = ${language};
        setTimeout(function () {
            window.location.replace('${root}/hall/index.html');
        }, 1000)
    </script>
</body>
</html>

