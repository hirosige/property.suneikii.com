module GlyphiconsHelper
  GLYPHICON_LIST = {
    :search => ' glyphicon glyphicon-search ',
    :pencil => ' glyphicon glyphicon-pencil ',
    :remove => ' glyphicon glyphicon-remove ',
    :trash  => ' glyphicon glyphicon-trash ',
    :arrow_right  => ' glyphicon glyphicon-arrow-right '
  }

  def get_glyph_icon(key)
    GLYPHICON_LIST[key]
  end

  def set_glyph_icon(key)
    "<div class='#{GLYPHICON_LIST[key]}'>".html_safe
  end
end