

/* 抖动 */
$(function(){
    // more
    $(".doudong").hover(function () {
        $(this).addClass("animated swing");
        }, function () {
        $(this).removeClass("animated swing");
    })
    $(".doudong02").hover(function () {
        $(this).addClass("animated tada");
        }, function () {
        $(this).removeClass("animated tada");
    })
})

$(".box_03 .ys li").hover(function(){
	$(this).addClass('active').siblings('').removeClass('active')
})

/* 产品中心 */
var swiper = new Swiper('.box_01 .pro_center', {
	initialSlide :1,//默认第二个
	slidesPerView:2,
	initialSlide :1,
	spaceBetween:90,
	loop: true,
	navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
	},autoplay: {
      	delay:6000,//5秒切换一次
	  	disableOnInteraction: false,//手动滑动之后继续自动轮播
	},
});



/* 关于我们 */
var case_01 = new Swiper('.case_01', {
	slidesPerView:1,
	spaceBetween:0,
	loop : true,
      loopFillGroupWithBlank: true,
      pagination: {
        el: '.swiper-pagination',
        clickable: true,
      },autoplay: {
      	delay:5000,//5秒切换一次
	  	disableOnInteraction: false,//手动滑动之后继续自动轮播
	},
}); 



/* 新闻中心 */
jQuery(".news_center").slide({});







