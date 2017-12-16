$(function() {
    $('#notification').hide();

    $('[id^=like_condo_]').on('click', function() {
        var id = $(this).data('id');

        $.ajax({
            type: "POST",
            url: "/en/favorites/like",
            data: { id: id, type: "condo" }
        }).done(function( data ) {
            if (data.status === 'success') {
                console.log(data);
                $('#notification').html('<span>' + data.condo.name + 'をお気に入りに登録しました。</span>');
                $('#notification').fadeIn('slow', function() {
                    $(this).delay(2000).fadeOut("slow")
                });

                $('#favorite_condo_' + id).empty();
                $('#favorite_condo_' + id).append('<div class="mainplane__btn--saved">登録済み</div>')

                $.ajax({
                    type: "GET",
                    url: "/en/favorites"
                }).done(function( data ) {
                    $('#favorite_counter').html(data.favorites.length);
                });
            } else {
                console.log(data.errors);
                $('#notification').html('<span>既にお気に入りに追加されてます。</span>');
                $('#notification').fadeIn('slow', function() {
                    $(this).delay(2000).fadeOut("slow")
                });
            }

        });
    })
});