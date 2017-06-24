class Page
  @base_url       = (id = '') -> "/en/admin/dealings/orders/#{id}"
  @table_body     = -> $('table#goods_list tbody')
  @table_rows     = -> $('table#goods_list tbody tr')
  @modal_search   = -> $('#modal-search')
  @modal_contents = -> $('#modal-contents')

delete_order = (ids) ->
  for id in ids
    $.ajax(
      type: 'DELETE'
      url:  "/en/admin/dealings/orders/#{id}"
      data: {
        id: id
      }
    ).done() ->
      console.log("done")

show_order = (href) ->
  window.location.href = href

show_search_menu = ->
  list_group  = ""
  list_group += "<div class='list-group'>"
  list_group += "  <button type='button' id='all' class='list-group-item'>全ての商品</button>"
  list_group += "  <button type='button' class='list-group-item'>人気の商品</button>"
  list_group += "  <button type='button' class='list-group-item'>コレクション</button>"
  list_group += "  <button type='button' class='list-group-item'>商品タイプ</button>"
  list_group += "  <button type='button' class='list-group-item'>タグ</button>"
  list_group += "  <button type='button' class='list-group-item'>メーカー</button>"
  list_group += "</div>"

  $('#modal-contents').html(list_group)
  $('#buttons').html('')

ajax_json_request = (type, url) ->
  $.ajax(
    type: type
    url:  url
    dataType: 'json'
  ).done((data) ->
    table  = ""
    table += "<div class='table-responsive'>"
    table += "  <table class='table table-striped jambo_table bulk_action'>"
    table += "    <thead>"
    table += "      <tr class='headings'>"
    table += "      <th class='column-title'>Buttons</th>"
    table += "      <th class='column-title'>Photo</th>"
    table += "      <th class='column-title'>Name</th>"
    table += "      <th class='column-title'>Price</th>"
    table += "    </thead>"
    table += "    <tbody>"

    for record in data
      table += "      <tr class='even pointer'>"
      table += "        <td><button id='add_#{record.id}' class='btn btn-xs btn-success' data-id='#{record.id}' >追加</button></td>"
      table += "        <td>画像なし</td>"
      table += "        <td>#{record.name}</td>"
      table += "        <td>#{record.price}</td>"
      table += "      </tr>"

    table += "    </tbody>"
    table += "  </table>"
    table += "</div>"

    $('#modal-contents').html(table)
    $('#buttons').append('<button id="return" class="btn btn-info" type="button">戻る</button>')
  )

show_goods_table = (type, url) ->
  $.ajax(
    type: type
    url:  url
    dataType: 'json'
  ).done((data) ->

    adding_tr  = ""
    adding_tr += "      <tr data-row='' class='even pointer'>"
    adding_tr += "        <td>画像なし</td>"
    adding_tr += "        <td>#{data.name}</td>"
    adding_tr += "        <td><input type='text' id='qty_#{data.id}' data-id='#{data.id}' placeholder='個数' id='' class='form-control' value='1' /></td>"
    adding_tr += "        <td>#{data.price}</td>"
    adding_tr += "        <td id='price_#{data.id}'>#{data.price * 1}</td>"
    adding_tr += "        <td><button id='remove_#{data.id}' class='btn btn-sm btn-danger'>x</button></td>"
    adding_tr += "      </tr>"

    $('table#goods_list tbody').append(adding_tr)
    arrange_row_id()
  )

show_goods_table2 = (type, url) ->
  $.ajax(
    type: type
    url:  url
    dataType: 'json'
    async: false
  ).done((data) ->
    data.responseText
  )

arrange_row_id = ->
  Page.table_rows().each((i) ->
    remove_button = $(@).children('td').eq(5).children('button')
    remove_button.attr('data-row', i)
  )

$ ->
  $('[id=deleting]').click ->
    tr = $("table tr")
    checked = $(':checkbox:checked').map(->
      $(@).data('ids')
    ).get()

    delete_order(checked)

  Page.table_rows().addClass('clickable').click (e) ->
    show_order($(@).data('href'))

  $(document).on('click', '#all', ->
    $('#modal-contents').html('<img style="display: block; margin-left: auto; margin-right: auto; width: 80px; height: 80px;" src="http://livedoor.4.blogimg.jp/tacshock-code14/imgs/8/a/8a33b035.gif">')
    ajax_json_request('GET', '/en/admin/products/goods.json')
  )

  $(document).on('click', '#return', ->
    show_search_menu()
  )

  Page.modal_search().keyup ->
    if $(@).val() == ''
      show_search_menu()
    else
      Page.modal_contents().html("No results found for '#{$(@).val()}'")

  $('#myModal2').on('show.bs.modal', ->
    show_search_menu()
    $('#modal-search').val('')
  )

  $(document).on 'click', "button[id ^= 'add_']", ->
    show_goods_table('GET', "/en/admin/products/goods/#{$(@).data('id')}.json")
    $('#myModal2').modal('hide')

  $(document).on 'click', "button[id ^= 'remove_']", ->
    deleting_id = $(@).data('row')
    PageObjects.table_rows().eq(deleting_id).remove()

  $(document).on 'keypress', "input[id ^= 'qty_']", ->
    res_data = show_goods_table2('GET', "/en/admin/products/goods/#{$(@).data('id')}.json").responseJSON
    price = res_data.price
    qty = $(@).val()
    sum = price * qty
    $("#price_#{$(@).data('id')}").text(sum)
