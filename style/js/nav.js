/*!
 * SuperSlide v2.1.3
 * 轻松解决网站大部分特效展示问题
 * 详尽信息请看官网：http://www.SuperSlide2.com/
 *
 * Copyright 2011-至今, 大话主席
 *
 * 请尊重原创，保留头部版权
 * 在保留版权的前提下可应用于个人或商业用途

 * v2.1.3：处理Jquery已经弃用的API，兼容最新版本的Jquery，目前是jquery3.3.1，日后如果发现插件不兼容新版本的jquery，请联系我 305491515@qq.com

 */
!function(a){a.fn.slide=function(b){return a.fn.slide.defaults={type:"slide",effect:"fade",autoPlay:!1,delayTime:500,interTime:2500,triggerTime:150,defaultIndex:0,titCell:".hd li",mainCell:".bd",targetCell:null,trigger:"mouseover",scroll:1,vis:1,titOnClassName:"on",autoPage:!1,prevCell:".prev",nextCell:".next",pageStateCell:".pageState",opp:!1,pnLoop:!0,easing:"swing",startFun:null,endFun:null,switchLoad:null,playStateCell:".playState",mouseOverStop:!0,defaultPlay:!0,returnDefault:!1},this.each(function(){var t,u,v,w,x,y,z,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,$,_,ab,bb,cb,db,eb,fb,gb,hb,ib,jb,kb,lb,mb,nb,c=a.extend({},a.fn.slide.defaults,b),d=a(this),e=c.effect,f=a(c.prevCell,d),g=a(c.nextCell,d),h=a(c.pageStateCell,d),i=a(c.playStateCell,d),j=a(c.titCell,d),k=j.length,l=a(c.mainCell,d),m=l.children().length,n=c.switchLoad,o=a(c.targetCell,d),p=parseInt(c.defaultIndex),q=parseInt(c.delayTime),r=parseInt(c.interTime);if(parseInt(c.triggerTime),t=parseInt(c.scroll),u="false"==c.autoPlay||0==c.autoPlay?!1:!0,v="false"==c.opp||0==c.opp?!1:!0,w="false"==c.autoPage||0==c.autoPage?!1:!0,x="false"==c.pnLoop||0==c.pnLoop?!1:!0,y="false"==c.mouseOverStop||0==c.mouseOverStop?!1:!0,z="false"==c.defaultPlay||0==c.defaultPlay?!1:!0,A="false"==c.returnDefault||0==c.returnDefault?!1:!0,B=isNaN(c.vis)?1:parseInt(c.vis),C=!-[1]&&!window.XMLHttpRequest,D=0,E=0,F=0,G=0,H=c.easing,I=null,J=null,K=null,L=c.titOnClassName,M=j.index(d.find("."+L)),N=p=-1==M?p:M,O=p,P=p,Q=m>=B?0!=m%t?m%t:t:0,S="leftMarquee"==e||"topMarquee"==e?!0:!1,T=function(){a.isFunction(c.startFun)&&c.startFun(p,k,d,a(c.titCell,d),l,o,f,g)},U=function(){a.isFunction(c.endFun)&&c.endFun(p,k,d,a(c.titCell,d),l,o,f,g)},V=function(){j.removeClass(L),z&&j.eq(O).addClass(L)},"menu"==c.type)return z&&j.removeClass(L).eq(p).addClass(L),j.hover(function(){R=a(this).find(c.targetCell);var b=j.index(a(this));J=setTimeout(function(){switch(p=b,j.removeClass(L).eq(p).addClass(L),T(),e){case"fade":R.stop(!0,!0).animate({opacity:"show"},q,H,U);break;case"slideDown":R.stop(!0,!0).animate({height:"show"},q,H,U)}},c.triggerTime)},function(){switch(clearTimeout(J),e){case"fade":R.animate({opacity:"hide"},q,H);break;case"slideDown":R.animate({height:"hide"},q,H)}}),A&&d.hover(function(){clearTimeout(K)},function(){K=setTimeout(V,q)}),void 0;if(0==k&&(k=m),S&&(k=2),w){if(m>=B?"leftLoop"==e||"topLoop"==e?k=0!=m%t?(0^m/t)+1:m/t:(W=m-B,k=1+parseInt(0!=W%t?W/t+1:W/t),0>=k&&(k=1)):k=1,j.html(""),X="",1==c.autoPage||"true"==c.autoPage)for(Y=0;k>Y;Y++)X+="<li>"+(Y+1)+"</li>";else for(Y=0;k>Y;Y++)X+=c.autoPage.replace("$",Y+1);j.html(X),j=j.children()}if(m>=B)switch(l.children().each(function(){a(this).width()>F&&(F=a(this).width(),E=a(this).outerWidth(!0)),a(this).height()>G&&(G=a(this).height(),D=a(this).outerHeight(!0))}),Z=l.children(),$=function(){var a;for(a=0;B>a;a++)Z.eq(a).clone().addClass("clone").appendTo(l);for(a=0;Q>a;a++)Z.eq(m-a-1).clone().addClass("clone").prependTo(l)},e){case"fold":l.css({position:"relative",width:E,height:D}).children().css({position:"absolute",width:F,left:0,top:0,display:"none"});break;case"top":l.wrap('<div class="tempWrap" style="overflow:hidden; position:relative; height:'+B*D+'px"></div>').css({top:-(p*t)*D,position:"relative",padding:"0",margin:"0"}).children().css({height:G});break;case"left":l.wrap('<div class="tempWrap" style="overflow:hidden; position:relative; width:'+B*E+'px"></div>').css({width:m*E,left:-(p*t)*E,position:"relative",overflow:"hidden",padding:"0",margin:"0"}).children().css({"float":"left",width:F});break;case"leftLoop":case"leftMarquee":$(),l.wrap('<div class="tempWrap" style="overflow:hidden; position:relative; width:'+B*E+'px"></div>').css({width:(m+B+Q)*E,position:"relative",overflow:"hidden",padding:"0",margin:"0",left:-(Q+p*t)*E}).children().css({"float":"left",width:F});break;case"topLoop":case"topMarquee":$(),l.wrap('<div class="tempWrap" style="overflow:hidden; position:relative; height:'+B*D+'px"></div>').css({height:(m+B+Q)*D,position:"relative",padding:"0",margin:"0",top:-(Q+p*t)*D}).children().css({height:G})}_=function(a){var b=a*t;return a==k?b=m:-1==a&&0!=m%t&&(b=-m%t),b},ab=function(b){var d,f,g,h,c=function(c){for(var d=c;B+c>d;d++)b.eq(d).find("img["+n+"]").each(function(){var c,d,b=a(this);if(b.attr("src",b.attr(n)).removeAttr(n),l.find(".clone")[0])for(c=l.children(),d=0;d<c.length;d++)c.eq(d).find("img["+n+"]").each(function(){a(this).attr(n)==b.attr("src")&&a(this).attr("src",a(this).attr(n)).removeAttr(n)})})};switch(e){case"fade":case"fold":case"top":case"left":case"slideDown":c(p*t);break;case"leftLoop":case"topLoop":c(Q+_(P));break;case"leftMarquee":case"topMarquee":d="leftMarquee"==e?l.css("left").replace("px",""):l.css("top").replace("px",""),f="leftMarquee"==e?E:D,g=Q,0!=d%f&&(h=Math.abs(0^d/f),g=1==p?Q+h:Q+h-1),c(g)}},bb=function(a){var b,c,d;if(!z||N!=p||a||S){if(S?p>=1?p=1:0>=p&&(p=0):(P=p,p>=k?p=0:0>p&&(p=k-1)),T(),null!=n&&ab(l.children()),o[0]&&(R=o.eq(p),null!=n&&ab(o),"slideDown"==e?(o.not(R).stop(!0,!0).slideUp(q),R.slideDown(q,H,function(){l[0]||U()})):(o.not(R).stop(!0,!0).hide(),R.animate({opacity:"show"},q,function(){l[0]||U()}))),m>=B)switch(e){case"fade":l.children().stop(!0,!0).eq(p).animate({opacity:"show"},q,H,function(){U()}).siblings().hide();break;case"fold":l.children().stop(!0,!0).eq(p).animate({opacity:"show"},q,H,function(){U()}).siblings().animate({opacity:"hide"},q,H);break;case"top":l.stop(!0,!1).animate({top:-p*t*D},q,H,function(){U()});break;case"left":l.stop(!0,!1).animate({left:-p*t*E},q,H,function(){U()});break;case"leftLoop":b=P,l.stop(!0,!0).animate({left:-(_(P)+Q)*E},q,H,function(){-1>=b?l.css("left",-(Q+(k-1)*t)*E):b>=k&&l.css("left",-Q*E),U()});break;case"topLoop":b=P,l.stop(!0,!0).animate({top:-(_(P)+Q)*D},q,H,function(){-1>=b?l.css("top",-(Q+(k-1)*t)*D):b>=k&&l.css("top",-Q*D),U()});break;case"leftMarquee":c=l.css("left").replace("px",""),0==p?l.animate({left:++c},0,function(){l.css("left").replace("px","")>=0&&l.css("left",-m*E)}):l.animate({left:--c},0,function(){l.css("left").replace("px","")<=-(m+Q)*E&&l.css("left",-Q*E)});break;case"topMarquee":d=l.css("top").replace("px",""),0==p?l.animate({top:++d},0,function(){l.css("top").replace("px","")>=0&&l.css("top",-m*D)}):l.animate({top:--d},0,function(){l.css("top").replace("px","")<=-(m+Q)*D&&l.css("top",-Q*D)})}j.removeClass(L).eq(p).addClass(L),N=p,x||(g.removeClass("nextStop"),f.removeClass("prevStop"),0==p&&f.addClass("prevStop"),p==k-1&&g.addClass("nextStop")),h.html("<span>"+(p+1)+"</span>/"+k)}},z&&bb(!0),A&&d.hover(function(){clearTimeout(K)},function(){K=setTimeout(function(){p=O,z?bb():"slideDown"==e?R.slideUp(q,V):R.animate({opacity:"hide"},q,V),N=p},300)}),cb=function(a){I=setInterval(function(){v?p--:p++,bb()},a?a:r)},db=function(a){I=setInterval(bb,a?a:r)},eb=function(){y||!u||i.hasClass("pauseState")||(clearInterval(I),cb())},fb=function(){(x||p!=k-1)&&(p++,bb(),S||eb())},gb=function(){(x||0!=p)&&(p--,bb(),S||eb())},hb=function(){clearInterval(I),S?db():cb(),i.removeClass("pauseState")},ib=function(){clearInterval(I),i.addClass("pauseState")},u?S?(v?p--:p++,db(),y&&l.hover(ib,hb)):(cb(),y&&d.hover(ib,hb)):(S&&(v?p--:p++),i.addClass("pauseState")),i.click(function(){i.hasClass("pauseState")?hb():ib()}),"mouseover"==c.trigger?j.hover(function(){var a=j.index(this);J=setTimeout(function(){p=a,bb(),eb()},c.triggerTime)},function(){clearTimeout(J)}):j.click(function(){p=j.index(this),bb(),eb()}),S?(g.mousedown(fb),f.mousedown(gb),x&&(kb=function(){jb=setTimeout(function(){clearInterval(I),db(0^r/10)},150)},lb=function(){clearTimeout(jb),clearInterval(I),db()},g.mousedown(kb),g.mouseup(lb),f.mousedown(kb),f.mouseup(lb)),"mouseover"==c.trigger&&(g.hover(fb,function(){}),f.hover(gb,function(){}))):(g.click(fb),f.click(gb)),"auto"!=c.vis||1!=t||"left"!=e&&"leftLoop"!=e||(nb=function(){C&&(l.width("auto"),l.children().width("auto")),l.parent().width("auto"),E=l.parent().width(),C&&l.parent().width(E),l.children().width(E),"left"==e?(l.width(E*m),l.stop(!0,!1).animate({left:-p*E},0)):(l.width(E*(m+2)),l.stop(!0,!1).animate({left:-(p+1)*E},0)),C||E==l.parent().width()||nb()},a(window).resize(function(){clearTimeout(mb),mb=setTimeout(nb,100)}),nb())})}}(jQuery),jQuery.easing["jswing"]=jQuery.easing["swing"],jQuery.extend(jQuery.easing,{def:"easeOutQuad",swing:function(a,b,c,d,e){return jQuery.easing[jQuery.easing.def](a,b,c,d,e)},easeInQuad:function(a,b,c,d,e){return d*(b/=e)*b+c},easeOutQuad:function(a,b,c,d,e){return-d*(b/=e)*(b-2)+c},easeInOutQuad:function(a,b,c,d,e){return(b/=e/2)<1?d/2*b*b+c:-d/2*(--b*(b-2)-1)+c},easeInCubic:function(a,b,c,d,e){return d*(b/=e)*b*b+c},easeOutCubic:function(a,b,c,d,e){return d*((b=b/e-1)*b*b+1)+c},easeInOutCubic:function(a,b,c,d,e){return(b/=e/2)<1?d/2*b*b*b+c:d/2*((b-=2)*b*b+2)+c},easeInQuart:function(a,b,c,d,e){return d*(b/=e)*b*b*b+c},easeOutQuart:function(a,b,c,d,e){return-d*((b=b/e-1)*b*b*b-1)+c},easeInOutQuart:function(a,b,c,d,e){return(b/=e/2)<1?d/2*b*b*b*b+c:-d/2*((b-=2)*b*b*b-2)+c},easeInQuint:function(a,b,c,d,e){return d*(b/=e)*b*b*b*b+c},easeOutQuint:function(a,b,c,d,e){return d*((b=b/e-1)*b*b*b*b+1)+c},easeInOutQuint:function(a,b,c,d,e){return(b/=e/2)<1?d/2*b*b*b*b*b+c:d/2*((b-=2)*b*b*b*b+2)+c},easeInSine:function(a,b,c,d,e){return-d*Math.cos(b/e*(Math.PI/2))+d+c},easeOutSine:function(a,b,c,d,e){return d*Math.sin(b/e*(Math.PI/2))+c},easeInOutSine:function(a,b,c,d,e){return-d/2*(Math.cos(Math.PI*b/e)-1)+c},easeInExpo:function(a,b,c,d,e){return 0==b?c:d*Math.pow(2,10*(b/e-1))+c},easeOutExpo:function(a,b,c,d,e){return b==e?c+d:d*(-Math.pow(2,-10*b/e)+1)+c},easeInOutExpo:function(a,b,c,d,e){return 0==b?c:b==e?c+d:(b/=e/2)<1?d/2*Math.pow(2,10*(b-1))+c:d/2*(-Math.pow(2,-10*--b)+2)+c},easeInCirc:function(a,b,c,d,e){return-d*(Math.sqrt(1-(b/=e)*b)-1)+c},easeOutCirc:function(a,b,c,d,e){return d*Math.sqrt(1-(b=b/e-1)*b)+c},easeInOutCirc:function(a,b,c,d,e){return(b/=e/2)<1?-d/2*(Math.sqrt(1-b*b)-1)+c:d/2*(Math.sqrt(1-(b-=2)*b)+1)+c},easeInElastic:function(a,b,c,d,e){var f=1.70158,g=0,h=d;return 0==b?c:1==(b/=e)?c+d:(g||(g=.3*e),h<Math.abs(d)?(h=d,f=g/4):f=g/(2*Math.PI)*Math.asin(d/h),-(h*Math.pow(2,10*(b-=1))*Math.sin((b*e-f)*2*Math.PI/g))+c)},easeOutElastic:function(a,b,c,d,e){var f=1.70158,g=0,h=d;return 0==b?c:1==(b/=e)?c+d:(g||(g=.3*e),h<Math.abs(d)?(h=d,f=g/4):f=g/(2*Math.PI)*Math.asin(d/h),h*Math.pow(2,-10*b)*Math.sin((b*e-f)*2*Math.PI/g)+d+c)},easeInOutElastic:function(a,b,c,d,e){var f=1.70158,g=0,h=d;return 0==b?c:2==(b/=e/2)?c+d:(g||(g=e*.3*1.5),h<Math.abs(d)?(h=d,f=g/4):f=g/(2*Math.PI)*Math.asin(d/h),1>b?-.5*h*Math.pow(2,10*(b-=1))*Math.sin((b*e-f)*2*Math.PI/g)+c:.5*h*Math.pow(2,-10*(b-=1))*Math.sin((b*e-f)*2*Math.PI/g)+d+c)},easeInBack:function(a,b,c,d,e,f){return void 0==f&&(f=1.70158),d*(b/=e)*b*((f+1)*b-f)+c},easeOutBack:function(a,b,c,d,e,f){return void 0==f&&(f=1.70158),d*((b=b/e-1)*b*((f+1)*b+f)+1)+c},easeInOutBack:function(a,b,c,d,e,f){return void 0==f&&(f=1.70158),(b/=e/2)<1?d/2*b*b*(((f*=1.525)+1)*b-f)+c:d/2*((b-=2)*b*(((f*=1.525)+1)*b+f)+2)+c},easeInBounce:function(a,b,c,d,e){return d-jQuery.easing.easeOutBounce(a,e-b,0,d,e)+c},easeOutBounce:function(a,b,c,d,e){return(b/=e)<1/2.75?d*7.5625*b*b+c:2/2.75>b?d*(7.5625*(b-=1.5/2.75)*b+.75)+c:2.5/2.75>b?d*(7.5625*(b-=2.25/2.75)*b+.9375)+c:d*(7.5625*(b-=2.625/2.75)*b+.984375)+c},easeInOutBounce:function(a,b,c,d,e){return e/2>b?.5*jQuery.easing.easeInBounce(a,2*b,0,d,e)+c:.5*jQuery.easing.easeOutBounce(a,2*b-e,0,d,e)+.5*d+c}});
/*
wjdhcms.com
by2.0
 */

(function ($) {
    var NivoSlider = function (element, options) {
        var settings = $.extend({}, $.fn.nivoSlider.defaults, options); var vars = { currentSlide: 0, currentImage: '', totalSlides: 0, randAnim: '', running: false, paused: false, stop: false }; var slider = $(element); slider.data('nivo:vars', vars); slider.css('position', 'relative'); slider.addClass('nivoSlider'); var kids = slider.children(); kids.each(function () {
            var child = $(this); var link = ''; if (!child.is('img')) {
                if (child.is('a')) { child.addClass('nivo-imageLink'); link = child; }
                child = child.find('img:first');
            }
            var childWidth = child.width(); if (childWidth == 0) childWidth = child.attr('width'); var childHeight = child.height(); if (childHeight == 0) childHeight = child.attr('height'); if (childWidth > slider.width()) { slider.width(childWidth); }
            if (childHeight > slider.height()) { slider.height(childHeight); }
            if (link != '') { link.css('display', 'none'); }
            child.css('display', 'none'); vars.totalSlides++;
        }); if (settings.startSlide > 0) { if (settings.startSlide >= vars.totalSlides) settings.startSlide = vars.totalSlides - 1; vars.currentSlide = settings.startSlide; }
        if ($(kids[vars.currentSlide]).is('img')) { vars.currentImage = $(kids[vars.currentSlide]); } else { vars.currentImage = $(kids[vars.currentSlide]).find('img:first'); }
        if ($(kids[vars.currentSlide]).is('a')) { $(kids[vars.currentSlide]).css('display', 'block'); }
        slider.css('background', 'url("' + vars.currentImage.attr('src') + '") center no-repeat'); slider.append($('<div class="nivo-caption"><p></p></div>').css({ display: 'none', opacity: settings.captionOpacity })); var processCaption = function (settings) {
            var nivoCaption = $('.nivo-caption', slider); if (vars.currentImage.attr('title') != '' && vars.currentImage.attr('title') != undefined) {
                var title = vars.currentImage.attr('title'); if (title.substr(0, 1) == '#') title = $(title).html(); if (nivoCaption.css('display') == 'block') { nivoCaption.find('p').fadeOut(settings.animSpeed, function () { $(this).html(title); $(this).fadeIn(settings.animSpeed); }); } else { nivoCaption.find('p').html(title); }
                nivoCaption.fadeIn(settings.animSpeed);
            } else { nivoCaption.fadeOut(settings.animSpeed); }
        }
        processCaption(settings); var timer = 0; if (!settings.manualAdvance && kids.length > 1) { timer = setInterval(function () { nivoRun(slider, kids, settings, false); }, settings.pauseTime); }
        if (settings.directionNav) {
            slider.append('<div class="nivo-directionNav"><a class="nivo-prevNav">' + '</a><a class="nivo-nextNav">' + '</a></div>'); if (settings.directionNavHide) { $('.nivo-directionNav', slider).hide(); slider.hover(function () { $('.nivo-directionNav', slider).show(); }, function () { $('.nivo-directionNav', slider).hide(); }); }
            $('a.nivo-prevNav', slider).live('click', function () { if (vars.running) return false; clearInterval(timer); timer = ''; vars.currentSlide -= 2; nivoRun(slider, kids, settings, 'prev'); }); $('a.nivo-nextNav', slider).live('click', function () { if (vars.running) return false; clearInterval(timer); timer = ''; nivoRun(slider, kids, settings, 'next'); });
        }
        if (settings.controlNav) {
            var nivoControl = $('<div class="nivo-controlNav"></div>'); slider.append(nivoControl); for (var i = 0; i < kids.length; i++) {
                if (settings.controlNavThumbs) {
                    var child = kids.eq(i); if (!child.is('img')) { child = child.find('img:first'); }
                    if (settings.controlNavThumbsFromRel) { nivoControl.append('<a class="nivo-control" rel="' + i + '"><img src="' + child.attr('rel') + '" alt="" /></a>'); } else { nivoControl.append('<a class="nivo-control" rel="' + i + '"><img src="' + child.attr('src').replace(settings.controlNavThumbsSearch, settings.controlNavThumbsReplace) + '" alt="" /></a>'); }
                } else { nivoControl.append('<a class="nivo-control" rel="' + i + '">' + (i + 1) + '</a>'); }
            }
            $('.nivo-controlNav a:eq(' + vars.currentSlide + ')', slider).addClass('active'); $('.nivo-controlNav a', slider).live('click', function () { if (vars.running) return false; if ($(this).hasClass('active')) return false; clearInterval(timer); timer = ''; slider.css('background', 'url("' + vars.currentImage.attr('src') + '")  no-repeat'); vars.currentSlide = $(this).attr('rel') - 1; nivoRun(slider, kids, settings, 'control'); });
        }
        if (settings.keyboardNav) {
            $(window).keypress(function (event) {
                if (event.keyCode == '37') { if (vars.running) return false; clearInterval(timer); timer = ''; vars.currentSlide -= 2; nivoRun(slider, kids, settings, 'prev'); }
                if (event.keyCode == '39') { if (vars.running) return false; clearInterval(timer); timer = ''; nivoRun(slider, kids, settings, 'next'); }
            });
        }
        if (settings.pauseOnHover) { slider.hover(function () { vars.paused = true; clearInterval(timer); timer = ''; }, function () { vars.paused = false; if (timer == '' && !settings.manualAdvance) { timer = setInterval(function () { nivoRun(slider, kids, settings, false); }, settings.pauseTime); } }); }
        slider.bind('nivo:animFinished', function () {
            vars.running = false; $(kids).each(function () { if ($(this).is('a')) { $(this).css('display', 'none'); } }); if ($(kids[vars.currentSlide]).is('a')) { $(kids[vars.currentSlide]).css('display', 'block'); }
            if (timer == '' && !vars.paused && !settings.manualAdvance) { timer = setInterval(function () { nivoRun(slider, kids, settings, false); }, settings.pauseTime); }
            settings.afterChange.call(this);
        }); var createSlices = function (slider, settings, vars) { for (var i = 0; i < settings.slices; i++) { var sliceWidth = Math.round(slider.width() / settings.slices); if (i == settings.slices - 1) { slider.append($('<div class="nivo-slice"></div>').css({ left: (sliceWidth * i) + 'px', width: (slider.width() - (sliceWidth * i)) + 'px', height: '0px', opacity: '0', background: 'url("' + vars.currentImage.attr('src') + '") no-repeat -' + ((sliceWidth + (i * sliceWidth)) - sliceWidth) + 'px 0%' })); } else { slider.append($('<div class="nivo-slice"></div>').css({ left: (sliceWidth * i) + 'px', width: sliceWidth + 'px', height: '0px', opacity: '0', background: 'url("' + vars.currentImage.attr('src') + '") no-repeat -' + ((sliceWidth + (i * sliceWidth)) - sliceWidth) + 'px 0%' })); } } }
        var createBoxes = function (slider, settings, vars) { var boxWidth = Math.round(slider.width() / settings.boxCols); var boxHeight = Math.round(slider.height() / settings.boxRows); for (var rows = 0; rows < settings.boxRows; rows++) { for (var cols = 0; cols < settings.boxCols; cols++) { if (cols == settings.boxCols - 1) { slider.append($('<div class="nivo-box"></div>').css({ opacity: 0, left: (boxWidth * cols) + 'px', top: (boxHeight * rows) + 'px', width: (slider.width() - (boxWidth * cols)) + 'px', height: boxHeight + 'px', background: 'url("' + vars.currentImage.attr('src') + '") no-repeat -' + ((boxWidth + (cols * boxWidth)) - boxWidth) + 'px -' + ((boxHeight + (rows * boxHeight)) - boxHeight) + 'px' })); } else { slider.append($('<div class="nivo-box"></div>').css({ opacity: 0, left: (boxWidth * cols) + 'px', top: (boxHeight * rows) + 'px', width: boxWidth + 'px', height: boxHeight + 'px', background: 'url("' + vars.currentImage.attr('src') + '") no-repeat -' + ((boxWidth + (cols * boxWidth)) - boxWidth) + 'px -' + ((boxHeight + (rows * boxHeight)) - boxHeight) + 'px' })); } } } }
        var nivoRun = function (slider, kids, settings, nudge) {
            var vars = slider.data('nivo:vars'); if (vars && (vars.currentSlide == vars.totalSlides - 1)) { settings.lastSlide.call(this); }
            if ((!vars || vars.stop) && !nudge) return false; settings.beforeChange.call(this); if (!nudge) { slider.css('background', 'url("' + vars.currentImage.attr('src') + '") no-repeat'); } else {
                if (nudge == 'prev') { slider.css('background', 'url("' + vars.currentImage.attr('src') + '") no-repeat'); }
                if (nudge == 'next') { slider.css('background', 'url("' + vars.currentImage.attr('src') + '") no-repeat'); }
            }
            vars.currentSlide++; if (vars.currentSlide == vars.totalSlides) { vars.currentSlide = 0; settings.slideshowEnd.call(this); }
            if (vars.currentSlide < 0) vars.currentSlide = (vars.totalSlides - 1); if ($(kids[vars.currentSlide]).is('img')) { vars.currentImage = $(kids[vars.currentSlide]); } else { vars.currentImage = $(kids[vars.currentSlide]).find('img:first'); }
            if (settings.controlNav) { $('.nivo-controlNav a', slider).removeClass('active'); $('.nivo-controlNav a:eq(' + vars.currentSlide + ')', slider).addClass('active'); }
            processCaption(settings); $('.nivo-slice', slider).remove(); $('.nivo-box', slider).remove(); if (settings.effect == 'random') { var anims = new Array('sliceDownRight', 'sliceDownLeft', 'sliceUpRight', 'sliceUpLeft', 'sliceUpDown', 'sliceUpDownLeft', 'fold', 'fade', 'boxRandom', 'boxRain', 'boxRainReverse', 'boxRainGrow', 'boxRainGrowReverse'); vars.randAnim = anims[Math.floor(Math.random() * (anims.length + 1))]; if (vars.randAnim == undefined) vars.randAnim = 'fade'; }
            if (settings.effect.indexOf(',') != -1) { var anims = settings.effect.split(','); vars.randAnim = anims[Math.floor(Math.random() * (anims.length))]; if (vars.randAnim == undefined) vars.randAnim = 'fade'; }
            vars.running = true; if (settings.effect == 'sliceDown' || settings.effect == 'sliceDownRight' || vars.randAnim == 'sliceDownRight' || settings.effect == 'sliceDownLeft' || vars.randAnim == 'sliceDownLeft') {
                createSlices(slider, settings, vars); var timeBuff = 0; var i = 0; var slices = $('.nivo-slice', slider); if (settings.effect == 'sliceDownLeft' || vars.randAnim == 'sliceDownLeft') slices = $('.nivo-slice', slider)._reverse(); slices.each(function () {
                    var slice = $(this); slice.css({ 'top': '0px' }); if (i == settings.slices - 1) { setTimeout(function () { slice.animate({ height: '100%', opacity: '1.0' }, settings.animSpeed, '', function () { slider.trigger('nivo:animFinished'); }); }, (100 + timeBuff)); } else { setTimeout(function () { slice.animate({ height: '100%', opacity: '1.0' }, settings.animSpeed); }, (100 + timeBuff)); }
                    timeBuff += 50; i++;
                });
            }
            else if (settings.effect == 'sliceUp' || settings.effect == 'sliceUpRight' || vars.randAnim == 'sliceUpRight' || settings.effect == 'sliceUpLeft' || vars.randAnim == 'sliceUpLeft') {
                createSlices(slider, settings, vars); var timeBuff = 0; var i = 0; var slices = $('.nivo-slice', slider); if (settings.effect == 'sliceUpLeft' || vars.randAnim == 'sliceUpLeft') slices = $('.nivo-slice', slider)._reverse(); slices.each(function () {
                    var slice = $(this); slice.css({ 'bottom': '0px' }); if (i == settings.slices - 1) { setTimeout(function () { slice.animate({ height: '100%', opacity: '1.0' }, settings.animSpeed, '', function () { slider.trigger('nivo:animFinished'); }); }, (100 + timeBuff)); } else { setTimeout(function () { slice.animate({ height: '100%', opacity: '1.0' }, settings.animSpeed); }, (100 + timeBuff)); }
                    timeBuff += 50; i++;
                });
            }
            else if (settings.effect == 'sliceUpDown' || settings.effect == 'sliceUpDownRight' || vars.randAnim == 'sliceUpDown' || settings.effect == 'sliceUpDownLeft' || vars.randAnim == 'sliceUpDownLeft') {
                createSlices(slider, settings, vars); var timeBuff = 0; var i = 0; var v = 0; var slices = $('.nivo-slice', slider); if (settings.effect == 'sliceUpDownLeft' || vars.randAnim == 'sliceUpDownLeft') slices = $('.nivo-slice', slider)._reverse(); slices.each(function () {
                    var slice = $(this); if (i == 0) { slice.css('top', '0px'); i++; } else { slice.css('bottom', '0px'); i = 0; }
                    if (v == settings.slices - 1) { setTimeout(function () { slice.animate({ height: '100%', opacity: '1.0' }, settings.animSpeed, '', function () { slider.trigger('nivo:animFinished'); }); }, (100 + timeBuff)); } else { setTimeout(function () { slice.animate({ height: '100%', opacity: '1.0' }, settings.animSpeed); }, (100 + timeBuff)); }
                    timeBuff += 50; v++;
                });
            }
            else if (settings.effect == 'fold' || vars.randAnim == 'fold') {
                createSlices(slider, settings, vars); var timeBuff = 0; var i = 0; $('.nivo-slice', slider).each(function () {
                    var slice = $(this); var origWidth = slice.width(); slice.css({ top: '0px', height: '100%', width: '0px' }); if (i == settings.slices - 1) { setTimeout(function () { slice.animate({ width: origWidth, opacity: '1.0' }, settings.animSpeed, '', function () { slider.trigger('nivo:animFinished'); }); }, (100 + timeBuff)); } else { setTimeout(function () { slice.animate({ width: origWidth, opacity: '1.0' }, settings.animSpeed); }, (100 + timeBuff)); }
                    timeBuff += 50; i++;
                });
            }
            else if (settings.effect == 'fade' || vars.randAnim == 'fade') { createSlices(slider, settings, vars); var firstSlice = $('.nivo-slice:first', slider); firstSlice.css({ 'height': '100%', 'width': slider.width() + 'px' }); firstSlice.animate({ opacity: '1.0' }, (settings.animSpeed * 2), '', function () { slider.trigger('nivo:animFinished'); }); }
            else if (settings.effect == 'slideInRight' || vars.randAnim == 'slideInRight') { createSlices(slider, settings, vars); var firstSlice = $('.nivo-slice:first', slider); firstSlice.css({ 'height': '100%', 'width': '0px', 'opacity': '1' }); firstSlice.animate({ width: slider.width() + 'px' }, (settings.animSpeed * 2), '', function () { slider.trigger('nivo:animFinished'); }); }
            else if (settings.effect == 'slideInLeft' || vars.randAnim == 'slideInLeft') { createSlices(slider, settings, vars); var firstSlice = $('.nivo-slice:first', slider); firstSlice.css({ 'height': '100%', 'width': '0px', 'opacity': '1', 'left': '', 'right': '0px' }); firstSlice.animate({ width: slider.width() + 'px' }, (settings.animSpeed * 2), '', function () { firstSlice.css({ 'left': '0px', 'right': '' }); slider.trigger('nivo:animFinished'); }); }
            else if (settings.effect == 'boxRandom' || vars.randAnim == 'boxRandom') {
                createBoxes(slider, settings, vars); var totalBoxes = settings.boxCols * settings.boxRows; var i = 0; var timeBuff = 0; var boxes = shuffle($('.nivo-box', slider)); boxes.each(function () {
                    var box = $(this); if (i == totalBoxes - 1) { setTimeout(function () { box.animate({ opacity: '1' }, settings.animSpeed, '', function () { slider.trigger('nivo:animFinished'); }); }, (100 + timeBuff)); } else { setTimeout(function () { box.animate({ opacity: '1' }, settings.animSpeed); }, (100 + timeBuff)); }
                    timeBuff += 20; i++;
                });
            }
            else if (settings.effect == 'boxRain' || vars.randAnim == 'boxRain' || settings.effect == 'boxRainReverse' || vars.randAnim == 'boxRainReverse' || settings.effect == 'boxRainGrow' || vars.randAnim == 'boxRainGrow' || settings.effect == 'boxRainGrowReverse' || vars.randAnim == 'boxRainGrowReverse') {
                createBoxes(slider, settings, vars); var totalBoxes = settings.boxCols * settings.boxRows; var i = 0; var timeBuff = 0; var rowIndex = 0; var colIndex = 0; var box2Darr = new Array(); box2Darr[rowIndex] = new Array(); var boxes = $('.nivo-box', slider); if (settings.effect == 'boxRainReverse' || vars.randAnim == 'boxRainReverse' || settings.effect == 'boxRainGrowReverse' || vars.randAnim == 'boxRainGrowReverse') { boxes = $('.nivo-box', slider)._reverse(); }
                boxes.each(function () { box2Darr[rowIndex][colIndex] = $(this); colIndex++; if (colIndex == settings.boxCols) { rowIndex++; colIndex = 0; box2Darr[rowIndex] = new Array(); } }); for (var cols = 0; cols < (settings.boxCols * 2); cols++) {
                    var prevCol = cols; for (var rows = 0; rows < settings.boxRows; rows++) {
                        if (prevCol >= 0 && prevCol < settings.boxCols) {
                            (function (row, col, time, i, totalBoxes) {
                                var box = $(box2Darr[row][col]); var w = box.width(); var h = box.height(); if (settings.effect == 'boxRainGrow' || vars.randAnim == 'boxRainGrow' || settings.effect == 'boxRainGrowReverse' || vars.randAnim == 'boxRainGrowReverse') { box.width(0).height(0); }
                                if (i == totalBoxes - 1) { setTimeout(function () { box.animate({ opacity: '1', width: w, height: h }, settings.animSpeed / 1.3, '', function () { slider.trigger('nivo:animFinished'); }); }, (100 + time)); } else { setTimeout(function () { box.animate({ opacity: '1', width: w, height: h }, settings.animSpeed / 1.3); }, (100 + time)); }
                            })(rows, prevCol, timeBuff, i, totalBoxes); i++;
                        }
                        prevCol--;
                    }
                    timeBuff += 100;
                }
            }
        }
        var shuffle = function (arr) { for (var j, x, i = arr.length; i; j = parseInt(Math.random() * i), x = arr[--i], arr[i] = arr[j], arr[j] = x); return arr; }
        var trace = function (msg) {
            if (this.console && typeof console.log != "undefined")
                console.log(msg);
        }
        this.stop = function () { if (!$(element).data('nivo:vars').stop) { $(element).data('nivo:vars').stop = true; trace('Stop Slider'); } }
        this.start = function () { if ($(element).data('nivo:vars').stop) { $(element).data('nivo:vars').stop = false; trace('Start Slider'); } }
        settings.afterLoad.call(this); return this;
    }; $.fn.nivoSlider = function (options) { return this.each(function (key, value) { var element = $(this); if (element.data('nivoslider')) return element.data('nivoslider'); var nivoslider = new NivoSlider(this, options); element.data('nivoslider', nivoslider); }); }; $.fn.nivoSlider.defaults = { effect: 'random', slices: 15, boxCols: 8, boxRows: 4, animSpeed: 500, pauseTime: 3000, startSlide: 0, directionNav: true, directionNavHide: true, controlNav: true, controlNavThumbs: false, controlNavThumbsFromRel: false, controlNavThumbsSearch: '.jpg', controlNavThumbsReplace: '_thumb.jpg', keyboardNav: true, pauseOnHover: true, manualAdvance: false, captionOpacity: 0.8, prevText: 'Prev', nextText: 'Next', beforeChange: function () { }, afterChange: function () { }, slideshowEnd: function () { }, lastSlide: function () { }, afterLoad: function () { } }; $.fn._reverse = [].reverse;
})(jQuery);

/*--导航menu--*/
/*
$(function () {
        $(window).scroll(function () {
            if ($(window).scrollTop() >= 1) {
                $(".nav_xiala_xx").addClass("fixedNav");
            } else {
                $(".nav_xiala_xx").removeClass("fixedNav");
            }
        });
    });
	
*/

/* 导航 */
$('.nav_xiala_xx .w1200 li').hover(function() {
	$(this).children('.nav_erji').slideDown();
	event.stopPropagation();
}, function() {
	$(this).children('.nav_erji').slideUp(150);
	event.stopPropagation();
});

$(function () {
    var w1 = $(window).width();
    var l1 = $(".nav_xiala_xx .nav_erji").eq(0).parent().offset().left;
    $(".nav_xiala_xx .nav_erji").eq(0).css('left', -l1);
    var l2 = $(".nav_xiala_xx .nav_erji").eq(1).parent().offset().left;
    $(".nav_xiala_xx .nav_erji").eq(1).css('left', -l2);
    $(".nav_xiala_xx .nav_erji").css('width', w1);
	event.stopPropagation();
});


jQuery(".nav_erji").slide({});


/* 询盘信息 */
        $(function () {
            $('#xunpanText').hover(function() {
                var xunpanText = $(this).data('tiptitle');
                $('#xunpantip').css({
                    top: $(this).outerHeight(true) + 10 + 'px'
                })
                $('#xunpantip').text(xunpanText)
                $('#xunpantip').addClass('xunpantextactive')
            }, function () {
                $('#xunpantip').removeClass('xunpantextactive')
            })
        })





// 表单提交
$('#btn').on('click', function () {
  var content = $('#content').val();
  var userName = $('#userName').val();
  var userPhone = $('#userPhone').val();
  var kcode = $('#codeText').val().trim();
  // var kemail = $('.useremail').val();
  var reg = /^((0\d{2,3}[-]?\d{7,8})|(1[35847]\d{9})|([48]00[-]?[016789]\d{2,3}[-]?\d{3,4}))$/;
  if (userName == "") {
      alert('姓名不能为空！')
      $("#userName").focus();
      return false;
  }
  if (userPhone == "") {
      alert('号码不能为空！')
      $("#userPhone").focus();
      return false;
  }
  if(!reg.test(userPhone)) {
      alert('号码填写有误！')
      $("#userPhone").focus();
      return false;
  }
  if (content == "" || content.length < 10) {
      alert('留言内容必须大于10字！')
      $("#content").focus();
      return false;
  }
  if (kcode == "") {
      alert('验证码不能为空')
      $("#codeText").focus();
      return false;
  }
  $.post('/api/message.ashx?action=add', {
      "kcontent": '信息：' + content ,
      "kuser": userName,
      "kphone": userPhone,
	  "kcode": kcode
  }, function (res) {
      if (res == '1') {
          alert("留言提交成功");
          $('#content').val('');
          $('#userName').val('');
          $('#userPhone').val('');
          $('#codeText').val('');
      }else {
          alert('留言提交失败')
      }
  }) 
})

//验证码刷新
$("#imgCode").click(function () {
    $(this)[0].src = '/api/message.ashx?action=code&' + Math.random()
})

