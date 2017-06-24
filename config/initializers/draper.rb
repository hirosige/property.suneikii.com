Dir.glob("app/decorators/libs/*.rb") do |f|
  require_dependency Rails.root.join(f)
end

Draper::CollectionDecorator.delegate :current_page, :total_pages, :limit_value, :total_count