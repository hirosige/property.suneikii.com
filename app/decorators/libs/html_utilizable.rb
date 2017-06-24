module HtmlUtilizable
  def set_true_or_false(bool)
    if bool
      out_html = "<span class='glyphicon glyphicon-ok green'></span>".html_safe
    else
      out_html = "<span class='glyphicon glyphicon-remove red'></span>".html_safe
    end
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

  def headerlize(caption)
    out_html = ''.html_safe
    out_html << "<h3 class='page-header'>".html_safe
    out_html << "  #{caption}".html_safe
    out_html << "</h3>".html_safe
    out_html
  end

end
