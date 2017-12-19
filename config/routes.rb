# == Route Map
#
#                              Prefix Verb     URI Pattern                                                     Controller#Action
#                   api_v1_apartments GET      /api/v1/apartments(.:format)                                    api/v1/apartments#index
#                                     POST     /api/v1/apartments(.:format)                                    api/v1/apartments#create
#                new_api_v1_apartment GET      /api/v1/apartments/new(.:format)                                api/v1/apartments#new
#               edit_api_v1_apartment GET      /api/v1/apartments/:id/edit(.:format)                           api/v1/apartments#edit
#                    api_v1_apartment GET      /api/v1/apartments/:id(.:format)                                api/v1/apartments#show
#                                     PATCH    /api/v1/apartments/:id(.:format)                                api/v1/apartments#update
#                                     PUT      /api/v1/apartments/:id(.:format)                                api/v1/apartments#update
#                                     DELETE   /api/v1/apartments/:id(.:format)                                api/v1/apartments#destroy
#     users_omniauth_callbacks_github GET      /users/omniauth_callbacks/github(.:format)                      users/omniauth_callbacks#github
#   users_omniauth_callbacks_facebook GET      /users/omniauth_callbacks/facebook(.:format)                    users/omniauth_callbacks#facebook
#    users_omniauth_callbacks_twitter GET      /users/omniauth_callbacks/twitter(.:format)                     users/omniauth_callbacks#twitter
#  users_omniauth_callbacks_instagram GET      /users/omniauth_callbacks/instagram(.:format)                   users/omniauth_callbacks#instagram
#     users_omniauth_callbacks_flickr GET      /users/omniauth_callbacks/flickr(.:format)                      users/omniauth_callbacks#flickr
# users_omniauth_callbacks_foursquare GET      /users/omniauth_callbacks/foursquare(.:format)                  users/omniauth_callbacks#foursquare
#                             sitemap GET      /sitemap(.:format)                                              redirect(301, https://s3-ap-southeast-1.amazonaws.com/suneikii-sitemap-dev/sitemaps/sitemap.xml.gz)
#                    new_user_session GET      /users/sign_in(.:format)                                        app/sessions#new
#                        user_session POST     /users/sign_in(.:format)                                        app/sessions#create
#                destroy_user_session DELETE   /users/sign_out(.:format)                                       app/sessions#destroy
#     user_twitter_omniauth_authorize GET|POST /users/auth/twitter(.:format)                                   app/omniauth_callbacks#passthru
#      user_twitter_omniauth_callback GET|POST /users/auth/twitter/callback(.:format)                          app/omniauth_callbacks#twitter
#                       user_password POST     /users/password(.:format)                                       app/passwords#create
#                   new_user_password GET      /users/password/new(.:format)                                   app/passwords#new
#                  edit_user_password GET      /users/password/edit(.:format)                                  app/passwords#edit
#                                     PATCH    /users/password(.:format)                                       app/passwords#update
#                                     PUT      /users/password(.:format)                                       app/passwords#update
#            cancel_user_registration GET      /users/cancel(.:format)                                         app/registrations#cancel
#                   user_registration POST     /users(.:format)                                                app/registrations#create
#               new_user_registration GET      /users/sign_up(.:format)                                        app/registrations#new
#              edit_user_registration GET      /users/edit(.:format)                                           app/registrations#edit
#                                     PATCH    /users(.:format)                                                app/registrations#update
#                                     PUT      /users(.:format)                                                app/registrations#update
#                                     DELETE   /users(.:format)                                                app/registrations#destroy
#                   user_confirmation POST     /users/confirmation(.:format)                                   app/confirmations#create
#               new_user_confirmation GET      /users/confirmation/new(.:format)                               app/confirmations#new
#                                     GET      /users/confirmation(.:format)                                   app/confirmations#show
#                           eliminate GET      /eliminate(.:format)                                            app/sessions#destroy
#                          user_input GET      /user/input(.:format)                                           app/omniauth_callbacks#input
#                       user_complete POST     /user/complete(.:format)                                        app/omniauth_callbacks#complete
#                        user_profile GET      (/:locale)/user/profile(.:format)                               front/users#profile {:locale=>/ja|en|th/}
#                           user_name GET      (/:locale)/user/name(.:format)                                  front/users#name {:locale=>/ja|en|th/}
#                                     PUT      (/:locale)/user/name(.:format)                                  front/users#update {:locale=>/ja|en|th/}
#                        user_address GET      (/:locale)/user/address(.:format)                               front/users#address {:locale=>/ja|en|th/}
#                                     PUT      (/:locale)/user/address(.:format)                               front/users#update_profile {:locale=>/ja|en|th/}
#                          user_email GET      (/:locale)/user/email(.:format)                                 front/users#email {:locale=>/ja|en|th/}
#                                     PUT      (/:locale)/user/email(.:format)                                 front/users#update_profile {:locale=>/ja|en|th/}
#                                     GET      (/:locale)/user/profile(.:format)                               front/users#profile {:locale=>/ja|en|th/}
#                           user_edit GET      (/:locale)/user/edit(.:format)                                  front/users#edit {:locale=>/ja|en|th/}
#                  user_clear_session GET      (/:locale)/user/clear_session(.:format)                         front/users#clear_session {:locale=>/ja|en|th/}
#                         user_logout GET      (/:locale)/user/logout(.:format)                                front/sessions#logout {:locale=>/ja|en|th/}
#                        user_visited GET      (/:locale)/user/visited(.:format)                               front/sessions#visited {:locale=>/ja|en|th/}
#                      like_favorites POST     (/:locale)/favorites/like(.:format)                             front/favorites#like {:locale=>/ja|en|th/}
#                           favorites GET      (/:locale)/favorites(.:format)                                  front/favorites#index {:locale=>/ja|en|th/}
#                            favorite GET      (/:locale)/favorites/:id(.:format)                              front/favorites#show {:locale=>/ja|en|th/}
#                        site_inquiry GET      (/:locale)/site_inquiry(.:format)                               front/site_inquiry#index {:locale=>/ja|en|th/}
#                site_inquiry_confirm POST     (/:locale)/site_inquiry/confirm(.:format)                       front/site_inquiry#confirm {:locale=>/ja|en|th/}
#                 site_inquiry_thanks POST     (/:locale)/site_inquiry/thanks(.:format)                        front/site_inquiry#thanks {:locale=>/ja|en|th/}
#             apartment_province_list GET      (/:locale)/apartments(.:format)                                 front/apartments#province {:locale=>/ja|en|th/}
#                           apartment GET      (/:locale)/apartments/:id(.:format)                             front/apartments#show {:locale=>/ja|en|th/}
#             apartment_district_list GET      (/:locale)/apartments/:province/city(.:format)                  front/apartments#district {:locale=>/ja|en|th/}
#                          apartments GET      (/:locale)/apartments/:province/city/:district(.:format)        front/apartments#index {:locale=>/ja|en|th/}
#                   apartment_inquiry GET      (/:locale)/apartments/:id/inquiry(.:format)                     front/apartments#inquiry {:locale=>/ja|en|th/}
#           apartment_inquiry_confirm POST     (/:locale)/apartments/:id/confirm(.:format)                     front/apartments#confirm {:locale=>/ja|en|th/}
#            apartment_inquiry_thanks POST     (/:locale)/apartments/thanks(.:format)                          front/apartments#thanks {:locale=>/ja|en|th/}
#                  land_province_list GET      (/:locale)/lands(.:format)                                      front/lands#province {:locale=>/ja|en|th/}
#                                land GET      (/:locale)/lands/:id(.:format)                                  front/lands#show {:locale=>/ja|en|th/}
#                  land_district_list GET      (/:locale)/lands/:province/city(.:format)                       front/lands#district {:locale=>/ja|en|th/}
#                               lands GET      (/:locale)/lands/:province/city/:district(.:format)             front/lands#index {:locale=>/ja|en|th/}
#                        land_inquiry GET      (/:locale)/lands/:id/inquiry(.:format)                          front/lands#inquiry {:locale=>/ja|en|th/}
#                land_inquiry_confirm POST     (/:locale)/lands/:id/confirm(.:format)                          front/lands#confirm {:locale=>/ja|en|th/}
#                 land_inquiry_thanks POST     (/:locale)/lands/thanks(.:format)                               front/lands#thanks {:locale=>/ja|en|th/}
#                 condo_province_list GET      (/:locale)/condos(.:format)                                     front/condos#province {:locale=>/ja|en|th/}
#                               condo GET      (/:locale)/condos/:id(.:format)                                 front/condos#show {:locale=>/ja|en|th/}
#                 condo_district_list GET      (/:locale)/condos/:province/city(.:format)                      front/condos#district {:locale=>/ja|en|th/}
#                              condos GET      (/:locale)/condos/:province/city/:district(.:format)            front/condos#index {:locale=>/ja|en|th/}
#                       condo_inquiry GET      (/:locale)/condos/:id/inquiry(.:format)                         front/condos#inquiry {:locale=>/ja|en|th/}
#               condo_inquiry_confirm POST     (/:locale)/condos/:id/confirm(.:format)                         front/condos#confirm {:locale=>/ja|en|th/}
#                condo_inquiry_thanks POST     (/:locale)/condos/thanks(.:format)                              front/condos#thanks {:locale=>/ja|en|th/}
#                               admin GET      (/:locale)/admin(.:format)                                      admin/members/users#index {:locale=>/ja|en|th/}
#            admin_settings_use_terms GET      (/:locale)/admin/settings/use_terms(.:format)                   admin/settings/use_terms#index {:locale=>/ja|en|th/}
#                                     POST     (/:locale)/admin/settings/use_terms(.:format)                   admin/settings/use_terms#create {:locale=>/ja|en|th/}
#         new_admin_settings_use_term GET      (/:locale)/admin/settings/use_terms/new(.:format)               admin/settings/use_terms#new {:locale=>/ja|en|th/}
#        edit_admin_settings_use_term GET      (/:locale)/admin/settings/use_terms/:id/edit(.:format)          admin/settings/use_terms#edit {:locale=>/ja|en|th/}
#             admin_settings_use_term GET      (/:locale)/admin/settings/use_terms/:id(.:format)               admin/settings/use_terms#show {:locale=>/ja|en|th/}
#                                     PATCH    (/:locale)/admin/settings/use_terms/:id(.:format)               admin/settings/use_terms#update {:locale=>/ja|en|th/}
#                                     PUT      (/:locale)/admin/settings/use_terms/:id(.:format)               admin/settings/use_terms#update {:locale=>/ja|en|th/}
#                                     DELETE   (/:locale)/admin/settings/use_terms/:id(.:format)               admin/settings/use_terms#destroy {:locale=>/ja|en|th/}
#               admin_areas_countries GET      (/:locale)/admin/areas/countries(.:format)                      admin/areas/countries#index {:locale=>/ja|en|th/}
#                 admin_areas_country GET      (/:locale)/admin/areas/countries/:id(.:format)                  admin/areas/countries#show {:locale=>/ja|en|th/}
#               admin_areas_provinces GET      (/:locale)/admin/areas/provinces(.:format)                      admin/areas/provinces#index {:locale=>/ja|en|th/}
#                admin_areas_province GET      (/:locale)/admin/areas/provinces/:id(.:format)                  admin/areas/provinces#show {:locale=>/ja|en|th/}
#               admin_areas_districts GET      (/:locale)/admin/areas/districts(.:format)                      admin/areas/districts#index {:locale=>/ja|en|th/}
#                admin_areas_district GET      (/:locale)/admin/areas/districts/:id(.:format)                  admin/areas/districts#show {:locale=>/ja|en|th/}
#             publish_admin_apartment GET      (/:locale)/admin/apartments/:id/publish(.:format)               admin/apartments/apartments#publish {:locale=>/ja|en|th/}
#             decline_admin_apartment GET      (/:locale)/admin/apartments/:id/decline(.:format)               admin/apartments/apartments#decline {:locale=>/ja|en|th/}
#               clean_admin_apartment GET      (/:locale)/admin/apartments/:id/clean(.:format)                 admin/apartments/apartments#clean {:locale=>/ja|en|th/}
#              occupy_admin_apartment GET      (/:locale)/admin/apartments/:id/occupy(.:format)                admin/apartments/apartments#occupy {:locale=>/ja|en|th/}
#              enable_admin_apartment GET      (/:locale)/admin/apartments/:id/enable(.:format)                admin/apartments/apartments#enable {:locale=>/ja|en|th/}
#             disable_admin_apartment GET      (/:locale)/admin/apartments/:id/disable(.:format)               admin/apartments/apartments#disable {:locale=>/ja|en|th/}
#                    admin_apartments GET      (/:locale)/admin/apartments(.:format)                           admin/apartments/apartments#index {:locale=>/ja|en|th/}
#                                     POST     (/:locale)/admin/apartments(.:format)                           admin/apartments/apartments#create {:locale=>/ja|en|th/}
#                 new_admin_apartment GET      (/:locale)/admin/apartments/new(.:format)                       admin/apartments/apartments#new {:locale=>/ja|en|th/}
#                edit_admin_apartment GET      (/:locale)/admin/apartments/:id/edit(.:format)                  admin/apartments/apartments#edit {:locale=>/ja|en|th/}
#                     admin_apartment GET      (/:locale)/admin/apartments/:id(.:format)                       admin/apartments/apartments#show {:locale=>/ja|en|th/}
#                                     PATCH    (/:locale)/admin/apartments/:id(.:format)                       admin/apartments/apartments#update {:locale=>/ja|en|th/}
#                                     PUT      (/:locale)/admin/apartments/:id(.:format)                       admin/apartments/apartments#update {:locale=>/ja|en|th/}
#                                     DELETE   (/:locale)/admin/apartments/:id(.:format)                       admin/apartments/apartments#destroy {:locale=>/ja|en|th/}
#             admin_apartment_options GET      (/:locale)/admin/apartment_options(.:format)                    admin/apartments/apartment_options#index {:locale=>/ja|en|th/}
#                                     POST     (/:locale)/admin/apartment_options(.:format)                    admin/apartments/apartment_options#create {:locale=>/ja|en|th/}
#          new_admin_apartment_option GET      (/:locale)/admin/apartment_options/new(.:format)                admin/apartments/apartment_options#new {:locale=>/ja|en|th/}
#         edit_admin_apartment_option GET      (/:locale)/admin/apartment_options/:id/edit(.:format)           admin/apartments/apartment_options#edit {:locale=>/ja|en|th/}
#              admin_apartment_option GET      (/:locale)/admin/apartment_options/:id(.:format)                admin/apartments/apartment_options#show {:locale=>/ja|en|th/}
#                                     PATCH    (/:locale)/admin/apartment_options/:id(.:format)                admin/apartments/apartment_options#update {:locale=>/ja|en|th/}
#                                     PUT      (/:locale)/admin/apartment_options/:id(.:format)                admin/apartments/apartment_options#update {:locale=>/ja|en|th/}
#                                     DELETE   (/:locale)/admin/apartment_options/:id(.:format)                admin/apartments/apartment_options#destroy {:locale=>/ja|en|th/}
#                  publish_admin_land GET      (/:locale)/admin/lands/:id/publish(.:format)                    admin/lands/lands#publish {:locale=>/ja|en|th/}
#                  decline_admin_land GET      (/:locale)/admin/lands/:id/decline(.:format)                    admin/lands/lands#decline {:locale=>/ja|en|th/}
#                    clean_admin_land GET      (/:locale)/admin/lands/:id/clean(.:format)                      admin/lands/lands#clean {:locale=>/ja|en|th/}
#                   occupy_admin_land GET      (/:locale)/admin/lands/:id/occupy(.:format)                     admin/lands/lands#occupy {:locale=>/ja|en|th/}
#                   enable_admin_land GET      (/:locale)/admin/lands/:id/enable(.:format)                     admin/lands/lands#enable {:locale=>/ja|en|th/}
#                  disable_admin_land GET      (/:locale)/admin/lands/:id/disable(.:format)                    admin/lands/lands#disable {:locale=>/ja|en|th/}
#                         admin_lands GET      (/:locale)/admin/lands(.:format)                                admin/lands/lands#index {:locale=>/ja|en|th/}
#                                     POST     (/:locale)/admin/lands(.:format)                                admin/lands/lands#create {:locale=>/ja|en|th/}
#                      new_admin_land GET      (/:locale)/admin/lands/new(.:format)                            admin/lands/lands#new {:locale=>/ja|en|th/}
#                     edit_admin_land GET      (/:locale)/admin/lands/:id/edit(.:format)                       admin/lands/lands#edit {:locale=>/ja|en|th/}
#                          admin_land GET      (/:locale)/admin/lands/:id(.:format)                            admin/lands/lands#show {:locale=>/ja|en|th/}
#                                     PATCH    (/:locale)/admin/lands/:id(.:format)                            admin/lands/lands#update {:locale=>/ja|en|th/}
#                                     PUT      (/:locale)/admin/lands/:id(.:format)                            admin/lands/lands#update {:locale=>/ja|en|th/}
#                                     DELETE   (/:locale)/admin/lands/:id(.:format)                            admin/lands/lands#destroy {:locale=>/ja|en|th/}
#                  admin_land_options GET      (/:locale)/admin/land_options(.:format)                         admin/lands/land_options#index {:locale=>/ja|en|th/}
#                                     POST     (/:locale)/admin/land_options(.:format)                         admin/lands/land_options#create {:locale=>/ja|en|th/}
#               new_admin_land_option GET      (/:locale)/admin/land_options/new(.:format)                     admin/lands/land_options#new {:locale=>/ja|en|th/}
#              edit_admin_land_option GET      (/:locale)/admin/land_options/:id/edit(.:format)                admin/lands/land_options#edit {:locale=>/ja|en|th/}
#                   admin_land_option GET      (/:locale)/admin/land_options/:id(.:format)                     admin/lands/land_options#show {:locale=>/ja|en|th/}
#                                     PATCH    (/:locale)/admin/land_options/:id(.:format)                     admin/lands/land_options#update {:locale=>/ja|en|th/}
#                                     PUT      (/:locale)/admin/land_options/:id(.:format)                     admin/lands/land_options#update {:locale=>/ja|en|th/}
#                                     DELETE   (/:locale)/admin/land_options/:id(.:format)                     admin/lands/land_options#destroy {:locale=>/ja|en|th/}
#                 publish_admin_condo GET      (/:locale)/admin/condos/:id/publish(.:format)                   admin/condos/condos#publish {:locale=>/ja|en|th/}
#                 decline_admin_condo GET      (/:locale)/admin/condos/:id/decline(.:format)                   admin/condos/condos#decline {:locale=>/ja|en|th/}
#                   clean_admin_condo GET      (/:locale)/admin/condos/:id/clean(.:format)                     admin/condos/condos#clean {:locale=>/ja|en|th/}
#                  occupy_admin_condo GET      (/:locale)/admin/condos/:id/occupy(.:format)                    admin/condos/condos#occupy {:locale=>/ja|en|th/}
#                  enable_admin_condo GET      (/:locale)/admin/condos/:id/enable(.:format)                    admin/condos/condos#enable {:locale=>/ja|en|th/}
#                 disable_admin_condo GET      (/:locale)/admin/condos/:id/disable(.:format)                   admin/condos/condos#disable {:locale=>/ja|en|th/}
#                        admin_condos GET      (/:locale)/admin/condos(.:format)                               admin/condos/condos#index {:locale=>/ja|en|th/}
#                                     POST     (/:locale)/admin/condos(.:format)                               admin/condos/condos#create {:locale=>/ja|en|th/}
#                     new_admin_condo GET      (/:locale)/admin/condos/new(.:format)                           admin/condos/condos#new {:locale=>/ja|en|th/}
#                    edit_admin_condo GET      (/:locale)/admin/condos/:id/edit(.:format)                      admin/condos/condos#edit {:locale=>/ja|en|th/}
#                         admin_condo GET      (/:locale)/admin/condos/:id(.:format)                           admin/condos/condos#show {:locale=>/ja|en|th/}
#                                     PATCH    (/:locale)/admin/condos/:id(.:format)                           admin/condos/condos#update {:locale=>/ja|en|th/}
#                                     PUT      (/:locale)/admin/condos/:id(.:format)                           admin/condos/condos#update {:locale=>/ja|en|th/}
#                                     DELETE   (/:locale)/admin/condos/:id(.:format)                           admin/condos/condos#destroy {:locale=>/ja|en|th/}
#                 admin_condo_options GET      (/:locale)/admin/condo_options(.:format)                        admin/condos/condo_options#index {:locale=>/ja|en|th/}
#                                     POST     (/:locale)/admin/condo_options(.:format)                        admin/condos/condo_options#create {:locale=>/ja|en|th/}
#              new_admin_condo_option GET      (/:locale)/admin/condo_options/new(.:format)                    admin/condos/condo_options#new {:locale=>/ja|en|th/}
#             edit_admin_condo_option GET      (/:locale)/admin/condo_options/:id/edit(.:format)               admin/condos/condo_options#edit {:locale=>/ja|en|th/}
#                  admin_condo_option GET      (/:locale)/admin/condo_options/:id(.:format)                    admin/condos/condo_options#show {:locale=>/ja|en|th/}
#                                     PATCH    (/:locale)/admin/condo_options/:id(.:format)                    admin/condos/condo_options#update {:locale=>/ja|en|th/}
#                                     PUT      (/:locale)/admin/condo_options/:id(.:format)                    admin/condos/condo_options#update {:locale=>/ja|en|th/}
#                                     DELETE   (/:locale)/admin/condo_options/:id(.:format)                    admin/condos/condo_options#destroy {:locale=>/ja|en|th/}
#                  admin_surroundings GET      (/:locale)/admin/surroundings(.:format)                         admin/facilities/surroundings#index {:locale=>/ja|en|th/}
#                                     POST     (/:locale)/admin/surroundings(.:format)                         admin/facilities/surroundings#create {:locale=>/ja|en|th/}
#               new_admin_surrounding GET      (/:locale)/admin/surroundings/new(.:format)                     admin/facilities/surroundings#new {:locale=>/ja|en|th/}
#              edit_admin_surrounding GET      (/:locale)/admin/surroundings/:id/edit(.:format)                admin/facilities/surroundings#edit {:locale=>/ja|en|th/}
#                   admin_surrounding GET      (/:locale)/admin/surroundings/:id(.:format)                     admin/facilities/surroundings#show {:locale=>/ja|en|th/}
#                                     PATCH    (/:locale)/admin/surroundings/:id(.:format)                     admin/facilities/surroundings#update {:locale=>/ja|en|th/}
#                                     PUT      (/:locale)/admin/surroundings/:id(.:format)                     admin/facilities/surroundings#update {:locale=>/ja|en|th/}
#                                     DELETE   (/:locale)/admin/surroundings/:id(.:format)                     admin/facilities/surroundings#destroy {:locale=>/ja|en|th/}
#               toggle_ban_admin_user GET      (/:locale)/admin/users/:id/toggle_ban(.:format)                 admin/members/users#toggle_ban {:locale=>/ja|en|th/}
#                admin_user_customers GET      (/:locale)/admin/users/:user_id/customers(.:format)             admin/members/customers#index {:locale=>/ja|en|th/}
#                                     POST     (/:locale)/admin/users/:user_id/customers(.:format)             admin/members/customers#create {:locale=>/ja|en|th/}
#             new_admin_user_customer GET      (/:locale)/admin/users/:user_id/customers/new(.:format)         admin/members/customers#new {:locale=>/ja|en|th/}
#                 edit_admin_customer GET      (/:locale)/admin/customers/:id/edit(.:format)                   admin/members/customers#edit {:locale=>/ja|en|th/}
#                      admin_customer GET      (/:locale)/admin/customers/:id(.:format)                        admin/members/customers#show {:locale=>/ja|en|th/}
#                                     PATCH    (/:locale)/admin/customers/:id(.:format)                        admin/members/customers#update {:locale=>/ja|en|th/}
#                                     PUT      (/:locale)/admin/customers/:id(.:format)                        admin/members/customers#update {:locale=>/ja|en|th/}
#                                     DELETE   (/:locale)/admin/customers/:id(.:format)                        admin/members/customers#destroy {:locale=>/ja|en|th/}
#        admin_user_business_partners GET      (/:locale)/admin/users/:user_id/business_partners(.:format)     admin/members/business_partners#index {:locale=>/ja|en|th/}
#                                     POST     (/:locale)/admin/users/:user_id/business_partners(.:format)     admin/members/business_partners#create {:locale=>/ja|en|th/}
#     new_admin_user_business_partner GET      (/:locale)/admin/users/:user_id/business_partners/new(.:format) admin/members/business_partners#new {:locale=>/ja|en|th/}
#         edit_admin_business_partner GET      (/:locale)/admin/business_partners/:id/edit(.:format)           admin/members/business_partners#edit {:locale=>/ja|en|th/}
#              admin_business_partner GET      (/:locale)/admin/business_partners/:id(.:format)                admin/members/business_partners#show {:locale=>/ja|en|th/}
#                                     PATCH    (/:locale)/admin/business_partners/:id(.:format)                admin/members/business_partners#update {:locale=>/ja|en|th/}
#                                     PUT      (/:locale)/admin/business_partners/:id(.:format)                admin/members/business_partners#update {:locale=>/ja|en|th/}
#                                     DELETE   (/:locale)/admin/business_partners/:id(.:format)                admin/members/business_partners#destroy {:locale=>/ja|en|th/}
#            admin_user_system_admins GET      (/:locale)/admin/users/:user_id/system_admins(.:format)         admin/members/system_admins#index {:locale=>/ja|en|th/}
#                                     POST     (/:locale)/admin/users/:user_id/system_admins(.:format)         admin/members/system_admins#create {:locale=>/ja|en|th/}
#         new_admin_user_system_admin GET      (/:locale)/admin/users/:user_id/system_admins/new(.:format)     admin/members/system_admins#new {:locale=>/ja|en|th/}
#             edit_admin_system_admin GET      (/:locale)/admin/system_admins/:id/edit(.:format)               admin/members/system_admins#edit {:locale=>/ja|en|th/}
#                  admin_system_admin GET      (/:locale)/admin/system_admins/:id(.:format)                    admin/members/system_admins#show {:locale=>/ja|en|th/}
#                                     PATCH    (/:locale)/admin/system_admins/:id(.:format)                    admin/members/system_admins#update {:locale=>/ja|en|th/}
#                                     PUT      (/:locale)/admin/system_admins/:id(.:format)                    admin/members/system_admins#update {:locale=>/ja|en|th/}
#                                     DELETE   (/:locale)/admin/system_admins/:id(.:format)                    admin/members/system_admins#destroy {:locale=>/ja|en|th/}
#                         admin_users GET      (/:locale)/admin/users(.:format)                                admin/members/users#index {:locale=>/ja|en|th/}
#                          admin_user GET      (/:locale)/admin/users/:id(.:format)                            admin/members/users#show {:locale=>/ja|en|th/}
#                                     DELETE   (/:locale)/admin/users/:id(.:format)                            admin/members/users#destroy {:locale=>/ja|en|th/}
#                     admin_customers GET      (/:locale)/admin/customers(.:format)                            admin/members/customers#index {:locale=>/ja|en|th/}
#                           admin_bps GET      (/:locale)/admin/bps(.:format)                                  admin/members/business_partners#index {:locale=>/ja|en|th/}
#                 admin_system_admins GET      (/:locale)/admin/system_admins(.:format)                        admin/members/system_admins#index {:locale=>/ja|en|th/}
#                         admin_roles GET      (/:locale)/admin/roles(.:format)                                admin/members/roles#index {:locale=>/ja|en|th/}
#                     admin_providers GET      (/:locale)/admin/providers(.:format)                            admin/providers/providers#index {:locale=>/ja|en|th/}
#                                     POST     (/:locale)/admin/providers(.:format)                            admin/providers/providers#create {:locale=>/ja|en|th/}
#                  new_admin_provider GET      (/:locale)/admin/providers/new(.:format)                        admin/providers/providers#new {:locale=>/ja|en|th/}
#                 edit_admin_provider GET      (/:locale)/admin/providers/:id/edit(.:format)                   admin/providers/providers#edit {:locale=>/ja|en|th/}
#                      admin_provider GET      (/:locale)/admin/providers/:id(.:format)                        admin/providers/providers#show {:locale=>/ja|en|th/}
#                                     PATCH    (/:locale)/admin/providers/:id(.:format)                        admin/providers/providers#update {:locale=>/ja|en|th/}
#                                     PUT      (/:locale)/admin/providers/:id(.:format)                        admin/providers/providers#update {:locale=>/ja|en|th/}
#                                     DELETE   (/:locale)/admin/providers/:id(.:format)                        admin/providers/providers#destroy {:locale=>/ja|en|th/}
#                                root GET      /(:locale)(.:format)                                            front/top#home {:locale=>/ja|en|th/}
#                                help GET      (/:locale)/help(.:format)                                       static_pages#help {:locale=>/ja|en|th/}
#                          retail_law GET      (/:locale)/retail_law(.:format)                                 static_pages#retail_law {:locale=>/ja|en|th/}
#                             privacy GET      (/:locale)/privacy(.:format)                                    static_pages#privacy {:locale=>/ja|en|th/}
#                       layout_sample GET      (/:locale)/layout_sample(.:format)                              static_pages#layout_sample {:locale=>/ja|en|th/}
#                             recruit GET      (/:locale)/recruit(.:format)                                    static_pages#privacy {:locale=>/ja|en|th/}
#                            location GET      (/:locale)/location(.:format)                                   static_pages#location {:locale=>/ja|en|th/}
#                              access GET      (/:locale)/access(.:format)                                     static_pages#access {:locale=>/ja|en|th/}
#                           floor_map GET      (/:locale)/floor_map(.:format)                                  static_pages#floor_map {:locale=>/ja|en|th/}
#                             inquiry GET      (/:locale)/inquiry(.:format)                                    inquiry#index {:locale=>/ja|en|th/}
#                     inquiry_confirm POST     (/:locale)/inquiry/confirm(.:format)                            inquiry#confirm {:locale=>/ja|en|th/}
#                      inquiry_thanks POST     (/:locale)/inquiry/thanks(.:format)                             inquiry#thanks {:locale=>/ja|en|th/}
#                                     GET      (/:locale)/*path(.:format)                                      application#render_404 {:locale=>/ja|en|th/}
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
      scope module: 'front' do
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

         # Apartments
         get  'apartments'                           => 'apartments#province',       as: 'apartment_province_list'
         get  'apartments/:id'                       => 'apartments#show',           as: 'apartment'
         get  'apartments/:province/city'            => 'apartments#district',       as: 'apartment_district_list'
         get  'apartments/:province/city/:district'  => 'apartments#index',          as: 'apartments'
         get  'apartments/:id/inquiry'               => 'apartments#inquiry',        as: 'apartment_inquiry'
         post 'apartments/:id/confirm'               => 'apartments#confirm',        as: 'apartment_inquiry_confirm'
         post 'apartments/thanks'                    => 'apartments#thanks',         as: 'apartment_inquiry_thanks'

         # Lands
         get  'lands'                                => 'lands#province',            as: 'land_province_list'
         get  'lands/:id'                            => 'lands#show',                as: 'land'
         get  'lands/:province/city'                 => 'lands#district',            as: 'land_district_list'
         get  'lands/:province/city/:district'       => 'lands#index',               as: 'lands'
         get  'lands/:id/inquiry'                    => 'lands#inquiry',             as: 'land_inquiry'
         post 'lands/:id/confirm'                    => 'lands#confirm',             as: 'land_inquiry_confirm'
         post 'lands/thanks'                         => 'lands#thanks',              as: 'land_inquiry_thanks'

         # Condominiums
         get  'condos'                               => 'condos#province',           as: 'condo_province_list'
         get  'condos/:id'                           => 'condos#show',               as: 'condo'
         get  'condos/:province/city'                => 'condos#district',           as: 'condo_district_list'
         get  'condos/:province/city/:district'      => 'condos#index',              as: 'condos'
         get  'condos/:id/inquiry'                   => 'condos#inquiry',            as: 'condo_inquiry'
         post 'condos/:id/confirm'                   => 'condos#confirm',            as: 'condo_inquiry_confirm'
         post 'condos/thanks'                        => 'condos#thanks',             as: 'condo_inquiry_thanks'
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

        scope module: :lands do
          resources :lands do
            member do
              get 'publish'
              get 'decline'
              get 'clean'
              get 'occupy'
              get 'enable'
              get 'disable'
            end
          end

          resources :land_options
        end

        scope module: :condos do
          resources :condos do
            member do
              get 'publish'
              get 'decline'
              get 'clean'
              get 'occupy'
              get 'enable'
              get 'disable'
            end
          end

          resources :condo_options
        end

        scope module: :facilities do
          resources :surroundings
        end

        scope module: :members do
          resources :users, shallow: true, :only => [:index, :show, :destroy] do
             member do
                get 'toggle_ban'
             end
          end
        end

        scope module: :providers do
          resources :providers
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
