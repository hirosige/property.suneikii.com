class SitemapDivider

  SITE_MAPS = {
      :dev  => SitemapDev.new,
      :prod => SitemapProd.new,
  }

  def self.get_instance(key)
    SITE_MAPS[key]
  end
end