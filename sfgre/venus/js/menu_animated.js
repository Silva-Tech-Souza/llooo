window.addEventListener('resize', function() {
    $(".slide1").css({
        opacity: 0,
        left: 0,
        width: 0,
    });
})
$(".nav-link").on("click", function() {
    var position = $(this).parent().position();
    var width = $(".nav-link").parent().width();
    $(".slide1").css({
        opacity: 1,
        left: +position.left,
        width: width,
    });
    $(".slide2").css({
        opacity: 1,
        left: +position.left,
        width: width,
    });
});
$(".btnamarge").on("click", function() {
    var position = $(this).parent().position();
    var width = $(".btnamarge").parent().width();
    $(".slide7").css({
        opacity: 1,
        left: +position.left,
        width: width - 15,
    });

});
$(".btnamarge1").on("click", function() {
    var position = $(this).parent().position();
    var width = $(".btnamarge1").parent().width();
    $(".slide7").css({
        opacity: 1,
        left: +position.left,
        width: width - 15,
    });

});
$(".btnamarge2").on("click", function() {
    var position = $(this).parent().position();
    var width = $(".btnamarge2").parent().width();
    $(".slide7").css({
        opacity: 1,
        left: +position.left,
        width: width - 15,
    });

});
$(".btnamarge3").on("click", function() {
    var position = $(this).parent().position();
    var width = $(".btnamarge3").parent().width();
    $(".slide7").css({
        opacity: 1,
        left: +position.left,
        width: width - 15,
    });

});
$(".btnamarge4").on("click", function() {
    var position = $(this).parent().position();
    var width = $(".btnamarge4").parent().width();
    $(".slide7").css({
        opacity: 1,
        left: +position.left,
        width: width - 15,
    });

});
$(".btnamarge").on("click", function() {

    $(this).addClass("btntudo");
    $(".btnamarge1").removeClass("btntudo");
    $(".btnamarge2").removeClass("btntudo");
    $(".btnamarge3").removeClass("btntudo");
    $(".btnamarge4").removeClass("btntudo");
});
$(".btnamarge1").on("click", function() {

    $(this).addClass("btntudo");
    $(".btnamarge").removeClass("btntudo");
    $(".btnamarge2").removeClass("btntudo");
    $(".btnamarge3").removeClass("btntudo");
    $(".btnamarge4").removeClass("btntudo");
});
$(".btnamarge2").on("click", function() {
    $(".btnamarge1").removeClass("btntudo");
    $(".btnamarge").removeClass("btntudo");
    $(".btnamarge3").removeClass("btntudo");
    $(".btnamarge4").removeClass("btntudo");
    $(this).addClass("btntudo");
});
$(".btnamarge3").on("click", function() {

    $(this).addClass("btntudo");
    $(".btnamarge1").removeClass("btntudo");
    $(".btnamarge2").removeClass("btntudo");
    $(".btnamarge").removeClass("btntudo");
    $(".btnamarge4").removeClass("btntudo");
});
$(".btnamarge4").on("click", function() {

    $(this).addClass("btntudo");
    $(".btnamarge1").removeClass("btntudo");
    $(".btnamarge2").removeClass("btntudo");
    $(".btnamarge3").removeClass("btntudo");
    $(".btnamarge").removeClass("btntudo");
});