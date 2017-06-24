# Github Services
# require_dependency Rails.root.join('app/services/github/github_url_builders/api_url_base.rb')
# require_dependency Rails.root.join('app/services/github/github_url_builders/base_presentor.rb')
#
# Dir.glob("app/services/github/github_url_builders/*.rb") do |f|
#   require_dependency Rails.root.join(f)
# end
#
# Dir.glob("app/services/github/github_model_connectors/*.rb") do |f|
#   require_dependency Rails.root.join(f)
# end
#
# Dir.glob("app/services/github/github_sync_units/*.rb") do |f|
#   require_dependency Rails.root.join(f)
# end

# Services
Dir.glob("app/services/**/*_service.rb") do |f|
  require_dependency Rails.root.join(f)
end

require_dependency Rails.root.join('app/controllers/front/cart.rb')
require_dependency Rails.root.join('app/controllers/front/cart_item.rb')
require_dependency Rails.root.join('app/services/custom_breadcrumbs_builder.rb')