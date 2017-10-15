# == Route Map
#
#                                  Prefix Verb   URI Pattern                                                             Controller#Action
#                        new_user_session GET    /users/sign_in(.:format)                                                app/sessions#new
#                            user_session POST   /users/sign_in(.:format)                                                app/sessions#create
#                    destroy_user_session DELETE /users/sign_out(.:format)                                               app/sessions#destroy
#                           user_password POST   /users/password(.:format)                                               app/passwords#create
#                       new_user_password GET    /users/password/new(.:format)                                           app/passwords#new
#                      edit_user_password GET    /users/password/edit(.:format)                                          app/passwords#edit
#                                         PATCH  /users/password(.:format)                                               app/passwords#update
#                                         PUT    /users/password(.:format)                                               app/passwords#update
#                cancel_user_registration GET    /users/cancel(.:format)                                                 app/registrations#cancel
#                       user_registration POST   /users(.:format)                                                        app/registrations#create
#                   new_user_registration GET    /users/sign_up(.:format)                                                app/registrations#new
#                  edit_user_registration GET    /users/edit(.:format)                                                   app/registrations#edit
#                                         PATCH  /users(.:format)                                                        app/registrations#update
#                                         PUT    /users(.:format)                                                        app/registrations#update
#                                         DELETE /users(.:format)                                                        app/registrations#destroy
#                       user_confirmation POST   /users/confirmation(.:format)                                           app/confirmations#create
#                   new_user_confirmation GET    /users/confirmation/new(.:format)                                       app/confirmations#new
#                                         GET    /users/confirmation(.:format)                                           app/confirmations#show
#                               eliminate GET    /eliminate(.:format)                                                    app/sessions#destroy
#                          front_products GET    (/:locale)/front/products(.:format)                                     front/products#index {:locale=>/ja|en/}
#                                   front GET    (/:locale)/front/products/:id/cart(.:format)                            front/products#add_cart {:locale=>/ja|en/}
#                     front_products_cart GET    (/:locale)/front/products/cart(.:format)                                front/products#cart {:locale=>/ja|en/}
#                     front_products_kill GET    (/:locale)/front/products/kill(.:format)                                front/products#kill {:locale=>/ja|en/}
#                                   admin GET    (/:locale)/admin(.:format)                                              admin/products/goods#index {:locale=>/ja|en/}
#                   admin_products_colors GET    (/:locale)/admin/products/products(.:format)                              admin/products/products#index {:locale=>/ja|en/}
#                                         POST   (/:locale)/admin/products/products(.:format)                              admin/products/products#create {:locale=>/ja|en/}
#                new_admin_products_color GET    (/:locale)/admin/products/products/new(.:format)                          admin/products/products#new {:locale=>/ja|en/}
#               edit_admin_products_color GET    (/:locale)/admin/products/products/:id/edit(.:format)                     admin/products/products#edit {:locale=>/ja|en/}
#                    admin_products_color GET    (/:locale)/admin/products/products/:id(.:format)                          admin/products/products#show {:locale=>/ja|en/}
#                                         PATCH  (/:locale)/admin/products/products/:id(.:format)                          admin/products/products#update {:locale=>/ja|en/}
#                                         PUT    (/:locale)/admin/products/products/:id(.:format)                          admin/products/products#update {:locale=>/ja|en/}
#                                         DELETE (/:locale)/admin/products/products/:id(.:format)                          admin/products/products#destroy {:locale=>/ja|en/}
#         admin_products_goods_categories GET    (/:locale)/admin/products/goods_categories(.:format)                    admin/products/goods_categories#index {:locale=>/ja|en/}
#                                         POST   (/:locale)/admin/products/goods_categories(.:format)                    admin/products/goods_categories#create {:locale=>/ja|en/}
#       new_admin_products_goods_category GET    (/:locale)/admin/products/goods_categories/new(.:format)                admin/products/goods_categories#new {:locale=>/ja|en/}
#      edit_admin_products_goods_category GET    (/:locale)/admin/products/goods_categories/:id/edit(.:format)           admin/products/goods_categories#edit {:locale=>/ja|en/}
#           admin_products_goods_category GET    (/:locale)/admin/products/goods_categories/:id(.:format)                admin/products/goods_categories#show {:locale=>/ja|en/}
#                                         PATCH  (/:locale)/admin/products/goods_categories/:id(.:format)                admin/products/goods_categories#update {:locale=>/ja|en/}
#                                         PUT    (/:locale)/admin/products/goods_categories/:id(.:format)                admin/products/goods_categories#update {:locale=>/ja|en/}
#                                         DELETE (/:locale)/admin/products/goods_categories/:id(.:format)                admin/products/goods_categories#destroy {:locale=>/ja|en/}
#                    admin_products_goods GET    (/:locale)/admin/products/goods(.:format)                               admin/products/goods#index {:locale=>/ja|en/}
#                                         POST   (/:locale)/admin/products/goods(.:format)                               admin/products/goods#create {:locale=>/ja|en/}
#                 new_admin_products_good GET    (/:locale)/admin/products/goods/new(.:format)                           admin/products/goods#new {:locale=>/ja|en/}
#                edit_admin_products_good GET    (/:locale)/admin/products/goods/:id/edit(.:format)                      admin/products/goods#edit {:locale=>/ja|en/}
#                     admin_products_good GET    (/:locale)/admin/products/goods/:id(.:format)                           admin/products/goods#show {:locale=>/ja|en/}
#                                         PATCH  (/:locale)/admin/products/goods/:id(.:format)                           admin/products/goods#update {:locale=>/ja|en/}
#                                         PUT    (/:locale)/admin/products/goods/:id(.:format)                           admin/products/goods#update {:locale=>/ja|en/}
#                                         DELETE (/:locale)/admin/products/goods/:id(.:format)                           admin/products/goods#destroy {:locale=>/ja|en/}
#              admin_products_ingredients GET    (/:locale)/admin/products/ingredients(.:format)                         admin/products/ingredients#index {:locale=>/ja|en/}
#                                         POST   (/:locale)/admin/products/ingredients(.:format)                         admin/products/ingredients#create {:locale=>/ja|en/}
#           new_admin_products_ingredient GET    (/:locale)/admin/products/ingredients/new(.:format)                     admin/products/ingredients#new {:locale=>/ja|en/}
#          edit_admin_products_ingredient GET    (/:locale)/admin/products/ingredients/:id/edit(.:format)                admin/products/ingredients#edit {:locale=>/ja|en/}
#               admin_products_ingredient GET    (/:locale)/admin/products/ingredients/:id(.:format)                     admin/products/ingredients#show {:locale=>/ja|en/}
#                                         PATCH  (/:locale)/admin/products/ingredients/:id(.:format)                     admin/products/ingredients#update {:locale=>/ja|en/}
#                                         PUT    (/:locale)/admin/products/ingredients/:id(.:format)                     admin/products/ingredients#update {:locale=>/ja|en/}
#                                         DELETE (/:locale)/admin/products/ingredients/:id(.:format)                     admin/products/ingredients#destroy {:locale=>/ja|en/}
#                    admin_products_sizes GET    (/:locale)/admin/products/sizes(.:format)                               admin/products/sizes#index {:locale=>/ja|en/}
#                                         POST   (/:locale)/admin/products/sizes(.:format)                               admin/products/sizes#create {:locale=>/ja|en/}
#                 new_admin_products_size GET    (/:locale)/admin/products/sizes/new(.:format)                           admin/products/sizes#new {:locale=>/ja|en/}
#                edit_admin_products_size GET    (/:locale)/admin/products/sizes/:id/edit(.:format)                      admin/products/sizes#edit {:locale=>/ja|en/}
#                     admin_products_size GET    (/:locale)/admin/products/sizes/:id(.:format)                           admin/products/sizes#show {:locale=>/ja|en/}
#                                         PATCH  (/:locale)/admin/products/sizes/:id(.:format)                           admin/products/sizes#update {:locale=>/ja|en/}
#                                         PUT    (/:locale)/admin/products/sizes/:id(.:format)                           admin/products/sizes#update {:locale=>/ja|en/}
#                                         DELETE (/:locale)/admin/products/sizes/:id(.:format)                           admin/products/sizes#destroy {:locale=>/ja|en/}
#           toggle_ban_admin_members_user GET    (/:locale)/admin/members/users/:id/toggle_ban(.:format)                 admin/members/users#toggle_ban {:locale=>/ja|en/}
#            admin_members_user_customers GET    (/:locale)/admin/members/users/:user_id/customers(.:format)             admin/members/customers#index {:locale=>/ja|en/}
#                                         POST   (/:locale)/admin/members/users/:user_id/customers(.:format)             admin/members/customers#create {:locale=>/ja|en/}
#         new_admin_members_user_customer GET    (/:locale)/admin/members/users/:user_id/customers/new(.:format)         admin/members/customers#new {:locale=>/ja|en/}
#             edit_admin_members_customer GET    (/:locale)/admin/members/customers/:id/edit(.:format)                   admin/members/customers#edit {:locale=>/ja|en/}
#                  admin_members_customer GET    (/:locale)/admin/members/customers/:id(.:format)                        admin/members/customers#show {:locale=>/ja|en/}
#                                         PATCH  (/:locale)/admin/members/customers/:id(.:format)                        admin/members/customers#update {:locale=>/ja|en/}
#                                         PUT    (/:locale)/admin/members/customers/:id(.:format)                        admin/members/customers#update {:locale=>/ja|en/}
#                                         DELETE (/:locale)/admin/members/customers/:id(.:format)                        admin/members/customers#destroy {:locale=>/ja|en/}
#    admin_members_user_business_partners GET    (/:locale)/admin/members/users/:user_id/business_partners(.:format)     admin/members/business_partners#index {:locale=>/ja|en/}
#                                         POST   (/:locale)/admin/members/users/:user_id/business_partners(.:format)     admin/members/business_partners#create {:locale=>/ja|en/}
# new_admin_members_user_business_partner GET    (/:locale)/admin/members/users/:user_id/business_partners/new(.:format) admin/members/business_partners#new {:locale=>/ja|en/}
#     edit_admin_members_business_partner GET    (/:locale)/admin/members/business_partners/:id/edit(.:format)           admin/members/business_partners#edit {:locale=>/ja|en/}
#          admin_members_business_partner GET    (/:locale)/admin/members/business_partners/:id(.:format)                admin/members/business_partners#show {:locale=>/ja|en/}
#                                         PATCH  (/:locale)/admin/members/business_partners/:id(.:format)                admin/members/business_partners#update {:locale=>/ja|en/}
#                                         PUT    (/:locale)/admin/members/business_partners/:id(.:format)                admin/members/business_partners#update {:locale=>/ja|en/}
#                                         DELETE (/:locale)/admin/members/business_partners/:id(.:format)                admin/members/business_partners#destroy {:locale=>/ja|en/}
#        admin_members_user_system_admins GET    (/:locale)/admin/members/users/:user_id/system_admins(.:format)         admin/members/system_admins#index {:locale=>/ja|en/}
#                                         POST   (/:locale)/admin/members/users/:user_id/system_admins(.:format)         admin/members/system_admins#create {:locale=>/ja|en/}
#     new_admin_members_user_system_admin GET    (/:locale)/admin/members/users/:user_id/system_admins/new(.:format)     admin/members/system_admins#new {:locale=>/ja|en/}
#         edit_admin_members_system_admin GET    (/:locale)/admin/members/system_admins/:id/edit(.:format)               admin/members/system_admins#edit {:locale=>/ja|en/}
#              admin_members_system_admin GET    (/:locale)/admin/members/system_admins/:id(.:format)                    admin/members/system_admins#show {:locale=>/ja|en/}
#                                         PATCH  (/:locale)/admin/members/system_admins/:id(.:format)                    admin/members/system_admins#update {:locale=>/ja|en/}
#                                         PUT    (/:locale)/admin/members/system_admins/:id(.:format)                    admin/members/system_admins#update {:locale=>/ja|en/}
#                                         DELETE (/:locale)/admin/members/system_admins/:id(.:format)                    admin/members/system_admins#destroy {:locale=>/ja|en/}
#                     admin_members_users GET    (/:locale)/admin/members/users(.:format)                                admin/members/users#index {:locale=>/ja|en/}
#                      admin_members_user GET    (/:locale)/admin/members/users/:id(.:format)                            admin/members/users#show {:locale=>/ja|en/}
#                 admin_members_customers GET    (/:locale)/admin/members/customers(.:format)                            admin/members/customers#index {:locale=>/ja|en/}
#                       admin_members_bps GET    (/:locale)/admin/members/bps(.:format)                                  admin/members/business_partners#index {:locale=>/ja|en/}
#             admin_members_system_admins GET    (/:locale)/admin/members/system_admins(.:format)                        admin/members/system_admins#index {:locale=>/ja|en/}
#                     admin_members_roles GET    (/:locale)/admin/members/roles(.:format)                                admin/members/roles#index {:locale=>/ja|en/}
#                  admin_tenants_shoppers GET    (/:locale)/admin/tenants/shoppers(.:format)                             admin/tenants/shoppers#index {:locale=>/ja|en/}
#                                         POST   (/:locale)/admin/tenants/shoppers(.:format)                             admin/tenants/shoppers#create {:locale=>/ja|en/}
#               new_admin_tenants_shopper GET    (/:locale)/admin/tenants/shoppers/new(.:format)                         admin/tenants/shoppers#new {:locale=>/ja|en/}
#              edit_admin_tenants_shopper GET    (/:locale)/admin/tenants/shoppers/:id/edit(.:format)                    admin/tenants/shoppers#edit {:locale=>/ja|en/}
#                   admin_tenants_shopper GET    (/:locale)/admin/tenants/shoppers/:id(.:format)                         admin/tenants/shoppers#show {:locale=>/ja|en/}
#                                         PATCH  (/:locale)/admin/tenants/shoppers/:id(.:format)                         admin/tenants/shoppers#update {:locale=>/ja|en/}
#                                         PUT    (/:locale)/admin/tenants/shoppers/:id(.:format)                         admin/tenants/shoppers#update {:locale=>/ja|en/}
#                                         DELETE (/:locale)/admin/tenants/shoppers/:id(.:format)                         admin/tenants/shoppers#destroy {:locale=>/ja|en/}
#             admin_tenants_shop_statuses GET    (/:locale)/admin/tenants/shop_statuses(.:format)                        admin/tenants/shop_statuses#index {:locale=>/ja|en/}
#                                         POST   (/:locale)/admin/tenants/shop_statuses(.:format)                        admin/tenants/shop_statuses#create {:locale=>/ja|en/}
#           new_admin_tenants_shop_status GET    (/:locale)/admin/tenants/shop_statuses/new(.:format)                    admin/tenants/shop_statuses#new {:locale=>/ja|en/}
#          edit_admin_tenants_shop_status GET    (/:locale)/admin/tenants/shop_statuses/:id/edit(.:format)               admin/tenants/shop_statuses#edit {:locale=>/ja|en/}
#               admin_tenants_shop_status GET    (/:locale)/admin/tenants/shop_statuses/:id(.:format)                    admin/tenants/shop_statuses#show {:locale=>/ja|en/}
#                                         PATCH  (/:locale)/admin/tenants/shop_statuses/:id(.:format)                    admin/tenants/shop_statuses#update {:locale=>/ja|en/}
#                                         PUT    (/:locale)/admin/tenants/shop_statuses/:id(.:format)                    admin/tenants/shop_statuses#update {:locale=>/ja|en/}
#                                         DELETE (/:locale)/admin/tenants/shop_statuses/:id(.:format)                    admin/tenants/shop_statuses#destroy {:locale=>/ja|en/}
#              admin_tenants_distributors GET    (/:locale)/admin/tenants/distributors(.:format)                         admin/tenants/distributors#index {:locale=>/ja|en/}
#                                         POST   (/:locale)/admin/tenants/distributors(.:format)                         admin/tenants/distributors#create {:locale=>/ja|en/}
#           new_admin_tenants_distributor GET    (/:locale)/admin/tenants/distributors/new(.:format)                     admin/tenants/distributors#new {:locale=>/ja|en/}
#          edit_admin_tenants_distributor GET    (/:locale)/admin/tenants/distributors/:id/edit(.:format)                admin/tenants/distributors#edit {:locale=>/ja|en/}
#               admin_tenants_distributor GET    (/:locale)/admin/tenants/distributors/:id(.:format)                     admin/tenants/distributors#show {:locale=>/ja|en/}
#                                         PATCH  (/:locale)/admin/tenants/distributors/:id(.:format)                     admin/tenants/distributors#update {:locale=>/ja|en/}
#                                         PUT    (/:locale)/admin/tenants/distributors/:id(.:format)                     admin/tenants/distributors#update {:locale=>/ja|en/}
#                                         DELETE (/:locale)/admin/tenants/distributors/:id(.:format)                     admin/tenants/distributors#destroy {:locale=>/ja|en/}
#     admin_tenants_shoppers_distributors GET    (/:locale)/admin/tenants/shoppers_distributors(.:format)                admin/tenants/shoppers_distributors#index {:locale=>/ja|en/}
#                                         POST   (/:locale)/admin/tenants/shoppers_distributors(.:format)                admin/tenants/shoppers_distributors#create {:locale=>/ja|en/}
#  new_admin_tenants_shoppers_distributor GET    (/:locale)/admin/tenants/shoppers_distributors/new(.:format)            admin/tenants/shoppers_distributors#new {:locale=>/ja|en/}
# edit_admin_tenants_shoppers_distributor GET    (/:locale)/admin/tenants/shoppers_distributors/:id/edit(.:format)       admin/tenants/shoppers_distributors#edit {:locale=>/ja|en/}
#      admin_tenants_shoppers_distributor GET    (/:locale)/admin/tenants/shoppers_distributors/:id(.:format)            admin/tenants/shoppers_distributors#show {:locale=>/ja|en/}
#                                         PATCH  (/:locale)/admin/tenants/shoppers_distributors/:id(.:format)            admin/tenants/shoppers_distributors#update {:locale=>/ja|en/}
#                                         PUT    (/:locale)/admin/tenants/shoppers_distributors/:id(.:format)            admin/tenants/shoppers_distributors#update {:locale=>/ja|en/}
#                                         DELETE (/:locale)/admin/tenants/shoppers_distributors/:id(.:format)            admin/tenants/shoppers_distributors#destroy {:locale=>/ja|en/}
#                                    root GET    /(:locale)(.:format)                                                    static_pages#home {:locale=>/ja|en/}
#                                    help GET    (/:locale)/help(.:format)                                               static_pages#help {:locale=>/ja|en/}
#                              retail_law GET    (/:locale)/retail_law(.:format)                                         static_pages#retail_law {:locale=>/ja|en/}
#                                 privacy GET    (/:locale)/privacy(.:format)                                            static_pages#privacy {:locale=>/ja|en/}
#                           layout_sample GET    (/:locale)/layout_sample(.:format)                                      static_pages#layout_sample {:locale=>/ja|en/}
#                                 recruit GET    (/:locale)/recruit(.:format)                                            static_pages#privacy {:locale=>/ja|en/}
#                                location GET    (/:locale)/location(.:format)                                           static_pages#location {:locale=>/ja|en/}
#                                 inquiry GET    (/:locale)/inquiry(.:format)                                            inquiry#index {:locale=>/ja|en/}
#                         inquiry_confirm POST   (/:locale)/inquiry/confirm(.:format)                                    inquiry#confirm {:locale=>/ja|en/}
#                          inquiry_thanks POST   (/:locale)/inquiry/thanks(.:format)                                     inquiry#thanks {:locale=>/ja|en/}
#



Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :apartments
    end
  end

   namespace :users do
      get 'omniauth_callbacks/github'
      get 'omniauth_callbacks/facebook'
      get 'omniauth_callbacks/twitter'
      get 'omniauth_callbacks/instagram'
      get 'omniauth_callbacks/flickr'
      get 'omniauth_callbacks/foursquare'
   end

   namespace :sample do

      # Dashboards
      root 'dashboard#dashboard'
      get '/dashboard2'          => 'dashboard#dashboard2'
      get '/dashboard3'          => 'dashboard#dashboard3'

      # GeneralForms
      get '/general_form'        => 'general_form#general_form'
      get '/advanced_components' => 'general_form#advanced_components'
      get '/form_validation'     => 'general_form#form_validation'
      get '/form_wizard'         => 'general_form#form_wizard'
      get '/form_upload'         => 'general_form#form_upload'
      get '/form_buttons'        => 'general_form#form_buttons'
      get '/login'               => 'general_form#login'

      # General Elements
      get '/general_elements' => 'ui_elements#general_elements'
      get '/media_gallery'    => 'ui_elements#media_gallery'
      get '/typography'       => 'ui_elements#typography'
      get '/icons'            => 'ui_elements#icons'
      get '/glyphicons'       => 'ui_elements#glyphicons'
      get '/widgets'          => 'ui_elements#widgets'
      get '/invoice'          => 'ui_elements#invoice'
      get '/inbox'            => 'ui_elements#inbox'
      get '/calendar'         => 'ui_elements#calendar'

      # Tables
      get '/tables' => 'tables#tables'
      get '/table_dynamic' => 'tables#table_dynamic'

      # Data Presentation
      get '/chart_js'     => 'data_presentation#chart_js'
      get '/chart_js2'    => 'data_presentation#chart_js2'
      get '/moris_js'     => 'data_presentation#moris_js'
      get '/e_charts'     => 'data_presentation#e_charts'
      get '/other_charts' => 'data_presentation#other_charts'

      # Additional Pages
      get '/e_commerce' => 'additional_pages#e_commerce'
      get '/projects' => 'additional_pages#projects'
      get '/project_detail' => 'additional_pages#project_detail'
      get '/contacts' => 'additional_pages#contacts'
      get '/profile' => 'additional_pages#profile'

      # Extra
      get '/error_403'      => 'extras#error_403'
      get '/error_404'      => 'extras#error_404'
      get '/error_500'      => 'extras#error_500'
      get '/plain_page'     => 'extras#plain_page'
      get '/login_page'     => 'extras#login_page'
      get '/pricing_tables' => 'extras#pricing_tables'
   end

   get '/sitemap'  => redirect('https://s3-ap-southeast-1.amazonaws.com/suneikii-sitemap-dev/sitemaps/sitemap.xml.gz')
   devise_for :users, :controllers => {
       :omniauth_callbacks => 'app/omniauth_callbacks',
       :registrations      => 'app/registrations',
       :passwords          => 'app/passwords',
       :sessions           => 'app/sessions',
       :unlocks            => 'app/unlocks',
       :confirmations      => 'app/confirmations',
   }

   devise_scope :user do
      get 'eliminate' => 'app/sessions#destroy'
      get '/user/input'     => 'app/omniauth_callbacks#input'
      post '/user/complete' => 'app/omniauth_callbacks#complete'
   end

   scope "(:locale)", :locale => /#{I18n.available_locales.map(&:to_s).join('|')}/ do

      # Front Pages
      scope module: 'front' do
         resources :products, shallow: true, :only => [:index, :show] do
           member do
             get 'add_cart'
           end

           collection do
             get 'cart'
             get 'kill'
           end
         end

         get 'user/profile'       => 'users#profile'
         get 'user/name'          => 'users#name'
         put 'user/name'          => 'users#update'
         get 'user/address'       => 'users#address'
         put 'user/address'       => 'users#update_profile'
         get 'user/email'         => 'users#email'
         put 'user/email'         => 'users#update_profile'
         get 'user/profile'       => 'users#profile'
         get 'user/edit'          => 'users#edit'
         get 'user/clear_session' => 'users#clear_session'
         get 'user/logout'        => 'sessions#logout'
         get 'user/visited'       => 'sessions#visited'

         # resources :apartments, shallow: true, :only => [:index, :show]
         resources :favorites, :only => [:index, :show] do
           collection do
             post 'like'
           end
         end

         # Inquiry
         get  'site_inquiry'             => 'site_inquiry#index'
         post 'site_inquiry/confirm'     => 'site_inquiry#confirm'
         post 'site_inquiry/thanks'      => 'site_inquiry#thanks'

         get  'apartments'                                        => 'apartments#province',       as: 'apartment_province_list'
         get  'apartments/:id'                                    => 'apartments#show',           as: 'apartment'
         get  'apartments/:province/city'                         => 'apartments#district',       as: 'apartment_district_list'
         get  'apartments/:province/city/:district'               => 'apartments#index',          as: 'apartments'
         get  'apartments/:id/inquiry'                            => 'apartments#inquiry',        as: 'apartment_inquiry'
         post 'apartments/:id/confirm'                            => 'apartments#confirm',        as: 'apartment_inquiry_confirm'
         post 'apartments/thanks'                                 => 'apartments#thanks',         as: 'apartment_inquiry_thanks'
      end

      # Administrator Pages
      get 'admin' => 'admin/members/users#index'
      namespace :admin do
        namespace :settings do
          resources :use_terms
        end

        namespace :areas do
          resources :countries, shallow: true, :only => [:index, :show]
          resources :provinces, shallow: true, :only => [:index, :show]
          resources :districts, shallow: true, :only => [:index, :show]
        end

        namespace :accommodations do
          resources :room_classes
          resources :rooms
          resources :services
          resources :accessories
        end

        scope module: :apartments do
          resources :apartments do
            member do
              get 'publish'
              get 'decline'
              get 'clean'
              get 'occupy'
              get 'enable'
              get 'disable'
            end
          end

          resources :apartment_options
        end

        namespace :facilities do
          resources :surroundings
        end

        namespace :foods do
          resources :restaurants do
            resources :menus
            resources :courses
          end
        end

        namespace :products do
          resources :colors
          resources :goods_categories
          resources :goods
          resources :ingredients
          resources :sizes
        end

        scope module: :members do
          resources :users, shallow: true, :only => [:index, :show, :destroy] do
             member do
                get 'toggle_ban'
             end

             resources :customers
             resources :business_partners
             resources :system_admins
          end

          get '/customers' => 'customers#index'
          get '/bps' => 'business_partners#index'
          get '/system_admins' => 'system_admins#index'
          get '/roles' => 'roles#index'
        end

        namespace :tenants do
          resources :shoppers
          resources :shop_statuses
          resources :distributors
          resources :shoppers_distributors
        end

        namespace :providers do
          resources :providers
        end

        namespace :dealings do
          resources :orders do
            member do
              get 'pay'
              get 'refund'

              post 'post' => 'timeline_messages#post'
            end
          end
        end
      end

      # Front Pages
      root 'front/top#home'
      get  'help'            => 'static_pages#help'
      get  'retail_law'      => 'static_pages#retail_law'
      get  'privacy'         => 'static_pages#privacy'
      get  'layout_sample'   => 'static_pages#layout_sample'
      get  'recruit'         => 'static_pages#privacy'
      get  'location'        => 'static_pages#location'
      get  'access'          => 'static_pages#access'
      get  'floor_map'       => 'static_pages#floor_map'

      # Inquiry
      get  'inquiry'         => 'inquiry#index'
      post 'inquiry/confirm' => 'inquiry#confirm'
      post 'inquiry/thanks'  => 'inquiry#thanks'
      get '*path', controller: 'application', action: 'render_404'

   end
end
