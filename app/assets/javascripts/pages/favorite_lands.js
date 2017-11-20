$(function() {
    $('#notification').hide();

    $('[id^=like_land_]').on('click', function() {
        var id = $(this).data('id');

        $.ajax({
            type: "POST",
            url: "/en/favorites/like",
            data: { id: id, type: "land" }
        }).done(function( data ) {
            if (data.status === 'success') {
                $('#notification').html('<span>' + data.land.name + 'をお気に入りに登録しました。</span>');
                $('#notification').fadeIn('slow', function() {
                    $(this).delay(2000).fadeOut("slow")
                });

                $('#favorite_land_' + id).empty();
                $('#favorite_land_' + id).append('<div class="mainplane__btn--saved">登録済み</div>')

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