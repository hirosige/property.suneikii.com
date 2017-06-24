class SitemapProd < SitemapBase
  def initialize
    @sitemap_resource = nil
    @sitemap_path     = nil
    @host             = nil
    @s3_adaptor       = nil
    @sitemap_host     = nil
  end

  def set_sitemap
    @sitemap_resource = SitemapGenerator::Sitemap
  end

  def set_public_path
    @sitemap_resource.public_path = 'tmp/'
  end

  def set_sitemap_path
    @sitemap_resource.sitemaps_path = 'sitemaps/'
  end

  def set_host
    @sitemap_resource.default_host = 'http://www.suneikii.com'
  end

  def configure_s3
    @sitemap_resource.adapter = SitemapGenerator::S3Adapter.new(
        fog_provider: 'AWS',
        aws_access_key_id:     ENV['S3_ACCESS_KEY_ID'],
        aws_secret_access_key: ENV['S3_SECRET_ACCESS_KEY'],
        fog_directory:         ENV['S3_BUCKET_NAME'],
        fog_region:            ENV['S3_REGION']
    )
  end

  def set_sitemap_host
    @sitemap_resource.sitemaps_host = ENV['HOST_SITEMAP']
  end

  def get_sitemap_generator
    set_sitemap
    set_public_path
    set_sitemap_path
    set_host
    configure_s3
    set_sitemap_host

    @sitemap_resource
  end
end