class SitemapBase
  def set_sitemap
    called_abstractly
  end

  def set_public_path
    called_abstractly
  end

  def set_sitemap_path
    called_abstractly
  end

  def set_host
    called_abstractly
  end

  def set_sitemap_host
    called_abstractly
  end

  def configure_s3
    called_abstractly
  end

  def publish
    called_abstractly
  end

  private
    def called_abstractly
      raise 'Called abstract method !!'
    end

end