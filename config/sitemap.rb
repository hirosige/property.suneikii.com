if Rails.env.production?
  sitemap_obj = SitemapDivider.get_instance(:prod)
  sitemap_generator = sitemap_obj.get_sitemap_generator
else
  sitemap_obj = SitemapDivider.get_instance(:dev)
  sitemap_generator = sitemap_obj.get_sitemap_generator
end

sitemap_generator.create do
  add '/admin/products/colors/new'
end