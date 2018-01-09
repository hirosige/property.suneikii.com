$(document)
    .ready(function () {

        // Semantic UI Initializing
        $('.ui.checkbox').checkbox();
        $('.ui.dropdown').dropdown();

        // Glide Initializing
        var hero = $('#hero').glide({
            type: 'carousel',
        });

        // Smooth Scroll for all Link
        $('a.smooth-scroll').click(function (e) {
            e.preventDefault();
            $('html, body').animate({
                scrollTop: $($(this).attr('href')).offset().top
            }, 500);
            return false;
        });

        // Smooth Scroll to Top
        $(window).scroll(function() {
            if ($(this).scrollTop()) {
                $('#go-to-top').fadeIn();
            } else {
                $('#go-to-top').fadeOut();
            }
        });

        $("#go-to-top").click(function (e) {
            e.preventDefault();
            $("html, body").animate({scrollTop: 0}, 500);
        });

        // Toggle Hamburger Main Menu
        $('#hamburger').click(function (e) {
            e.preventDefault();
            $('#main-menu').toggle();
        });
    })
;