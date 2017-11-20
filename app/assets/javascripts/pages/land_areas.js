/**
 * Created by hiro on 2017/09/03.
 */

var create_selectbox = function(params) {
    var select_box  = '';

    if (params.box_data.length) {
        select_box += '<select class="form-control" id="' + params.name.action + '_' + params.name.item + '_id' + '" name="' + params.name.action + '[' + params.name.item + '_id]' + '">';

        params.box_data.forEach(function(values) {
            select_box += '<option value="' + values.id + '">' + values.name_ja + '</option>';
        });

        select_box += '</select>';
    }

    return select_box;
};

$(function() {

    $(document).on('change', '#land_country_id', function() {
        $('#land_province_id').remove();
        $('#land_district_id').remove();
        $('#land_subdistrict_id').remove();

        $.ajax({
            type: 'GET',
            url: '/en/admin/areas/countries/' + $(this).val()
        }).done(function(data) {
            var selectbox = create_selectbox({
                name: {
                    action: 'land',
                    item: 'province'
                },
                box_data: data
            });

            $('#area_boxes').append(selectbox)
        });
    })

    $(document).on('change', '#land_province_id', function() {
        $('#land_district_id').remove();
        $('#land_subdistrict_id').remove();

        $.ajax({
            type: 'GET',
            url: '/en/admin/areas/provinces/' + $(this).val()
        }).done(function(data) {
            console.log(data);

            var selectbox = create_selectbox({
                name: {
                    action: 'land',
                    item: 'district'
                },
                box_data: data
            });

            $('#area_boxes').append(selectbox)
        });
    })

    $(document).on('change', '#land_district_id', function() {
        $('#land_subdistrict_id').remove();

        $.ajax({
            type: 'GET',
            url: '/en/admin/areas/districts/' + $(this).val()
        }).done(function(data) {
            console.log(data);

            var selectbox = create_selectbox({
                name: {
                    action: 'land',
                    item: 'subdistrict'
                },
                box_data: data
            });

            $('#area_boxes').append(selectbox)
        });
    })
});