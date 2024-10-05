var kefucurrentScript = document.currentScript || document.scripts[document.scripts.length - 1];
$(function() {
    var para = (kefucurrentScript.src.match(/[?&]color=([^&]*)/i) || ["", ""])[1];
    var content = '';
    var qq = [{"catid":1,"title":"QQ咨询","value":"123456"}];
    var wangwang = [];
    var other = [];
    var freecall = '19983727888';
    var tel = '123456';
    var mobile = '13458195618（微信同号）';
    var qrcode = 'http://img.dlwjdh.com/upload/10764/200826/8bfaee0be5ecfcfd7c50baba32667e83@260X260.png';
    var qqlist = '';
    var wwlist = '';
    var otlist = '';
    if (qq.length != 0) {
        for (var i = 0; i < qq.length; i++) { qqlist += '<li> <a target="_blank" href="http://wpa.qq.com/msgrd?v=3&site=qq&menu=yes&uin=' + qq[i].value +'target="_blank"' + '" title="' + qq[i].title + '">' + qq[i].title + '</a> </li>        ' } };
    if (wangwang.length != 0) {
        for (var i = 0; i < wangwang.length; i++) { wwlist += '<li class="ww"> <a target="_blank" href="http://www.taobao.com/webww/ww.php?ver=3&touid=' + wangwang[i].value + '&siteid=cntaobao&status=1&charset=utf-8"  title="' + wangwang[i].title + '">' + wangwang[i].title + '</a> </li>        ' } };
    if (other.length != 0) {
        for (var i = 0; i < other.length; i++) { otlist += '<li> <a target="_blank" href="' + other[i].value + '" title="' + other[i].title + '">' + other[i].title + '</a> </li>        ' } };
    content = '<link href="http://tag.wjdhcms.com/static/kefu/2-3362/css/qq_online.css" rel="stylesheet" type="text/css" /><div class="webqqs" style="left:0">		<div class="webqq_left" >			<span>在线客服 </span> 		</div>		<div class="webqq_right">			<div class="ren"><svg xmlns="http://www.w3.org/2000/svg" xml:space="preserve" xmlns:xlink="http://www.w3.org/1999/xlink">  <path class="svg" d="M139 0l-139 139 139 0 0 -139zm-17.3179 17.3179m0 17.3179m17.3179 -17.3179"/></svg><div class="renwu">	</div>			</div>			<div class="webqq_nr">				 				<div class="kf"></div>				<div class="qq_x"></div>			       <ul class="webqq_nn">        ' + qqlist + '        ' + wwlist + '		        ' + otlist + '      </ul>      <div class="webqq_ewm"> <img src="' + qrcode + '" alt="二维码" title="二维码" > <span> 扫一扫更精彩 </span> </div>        <div class="qq_x"></div>      <div class="webqq_tel"> 咨询热线：        <p>' + freecall + '</p>      </div>			</div>		</div>	</div>';
    var color = "<style>.webqq_left{background-color: #" + para + ";}.webqq_right .ren svg .svg {fill: #" + para + ";}.webqq_nr{ background: #" + para + ";}.webqq_ewm span{color:#" + para + "; }</style>";
    $("body").append(content + color);

        var stat = 0; //显示
        $(".webqq_left").click(function() {
            if (stat == 0) {
                $(".webqqs").animate({ left: "-143px" }, 200);
                stat = 1; //显示
            } else {
                $(".webqqs").animate({ left: " 0 " }, 200);
                stat = 0; //隐藏
            }
        });
})

