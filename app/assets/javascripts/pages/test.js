/**
 * Created by hiro on 2017/04/09.
 */

$(function() {
    var topBtn = $('#page-top');
    topBtn.hide();
    //スクロールが100に達したらボタン表示
    $(window).scroll(function () {
        console.log('scroll!!!');
        if ($(this).scrollTop() > 100) {
            console.log('yes scrolled over 100!!');
            topBtn.show();
        } else {
            topBtn.fadeOut();
        }
    });
    //スクロールしてトップ
    topBtn.click(function () {
        $('body,html').animate({
            scrollTop: 0
        }, 500);
        return false;
    });
});