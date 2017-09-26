module ApplicationHelper
  LOCALE = {
      :ja => '日本語',
      :en => 'English',
      :th => 'ไทย',
      :zh => '中文'
  }

  def i18n_url_for(options)
    if options[:locale] == I18n.default_locale
      options[:locale] = nil
    end
    url_for(options)
  end

  def locale_caption(locale)
    LOCALE[locale]
  end

  def set_button(type, size, active)
    if active
      output = "btn btn-#{size} btn-#{type} active".html_safe
    else
      output = "btn btn-#{size} btn-#{type}".html_safe
    end
    output
  end

  def set_button_new(caption, destination)
    link_to caption, destination, :class => set_button('info', 'sm', true)
  end

  def set_button_show(caption, destination)
    link_to caption, destination, :class => set_button('primary', 'xs', true) + get_glyph_icon(:search)
  end

  def set_button_edit(caption, destination)
    link_to caption, destination, :class => set_button('success', 'xs', true) + get_glyph_icon(:pencil)
  end

  def set_button_csv(caption, destination)
    link_to caption, destination, :class => set_button('secondary', 'sm', true)
  end

  def set_button_delete(caption, destination)
    link_to caption, destination,
            method: :delete, data: { confirm: 'Are you sure?' },
            :class => set_button('danger', 'xs', true) + get_glyph_icon(:trash)
  end

  def set_pagination(list_data)
    out_html_data = ''.html_safe
    out_html_data << '<h5>'.html_safe
    out_html_data << '  <span class="label label-default">'.html_safe
    out_html_data << "  #{list_data.total_count} results".html_safe
    out_html_data << '  </span>&nbsp;'.html_safe
    out_html_data << "  #{list_data.current_page} / #{list_data.total_pages}<br>".html_safe
    out_html_data << '</h5>'.html_safe
    out_html_data << paginate(list_data, outer_window: 4)
    out_html_data
  end

  def headerlize(caption)
    out_html = ''.html_safe
    out_html << "<h3 class='page-header'>".html_safe
    out_html << "  #{caption}".html_safe
    out_html << "</h3>".html_safe
    out_html
  end

  def set_table
    output = "class='table table-condensed table-hover table-bordered table-striped'".html_safe
    output
  end

  def set_table_slim
    class_list = %w(table table-condensed table-hover table-bordered table-striped)
    class_list
  end

  def default_meta_tags
    {
        site:        Settings.site[:name],
        reverse:     true,
        description: Settings.site[:page_description],
        og: {
            title:       Settings.site[:name],
            type:        Settings.site[:meta][:og][:type],
            url:         root_url,
            image:       image_url(Settings.site[:meta][:og][:image]),
            site_name:   :site,
            description: :description,
            locale:      'ja_JP'
        },
        twitter: {
            card:        Settings.site[:meta][:twitter][:card],
            site:        Settings.site[:meta][:twitter][:site],
            title:       Settings.site[:name],
            description: Settings.site[:page_description],
            image: {_: image_url(Settings.site[:meta][:og][:image])}
        }
    }
  end
end