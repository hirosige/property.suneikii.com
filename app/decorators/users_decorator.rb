class UsersDecorator < Draper::CollectionDecorator
  include HtmlUtilizable
  include CharUtilizable

  def set_table
    self.set_table_slim
  end

  def title(title)
    h.provide(:title, title)
  end

  def header(caption)
    self.headerlize(caption)
  end

  def set_paginate
    h.render partial: "shared/pagination", locals: {list_data: self.object}
  end

end
