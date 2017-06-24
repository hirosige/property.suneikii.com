class UserDecorator < Draper::Decorator
  delegate_all

  def your_id_sign
    "<span class='label label-warning'>It's you!!</span>".html_safe if h.current_user.id == model.id
  end

  def who_are_you
    case
      when model.role_id == 1
        if model.customer.nil?
          h.link_to h.t('admin.users.buttons.customer_before'),    # Caption
                    h.new_admin_members_user_customer_path(model), # Destination
                    :class => h.set_button('primary', 'xs', true)  # CSS Class
        else
          h.link_to h.t('admin.users.buttons.customer_after'),        # Caption
                    h.admin_members_customer_path(model.customer.id), # Destination
                    :class => h.set_button('info', 'xs', true)        # CSS Class
        end
      when model.role_id == 2
        if model.business_partner.nil?
          h.link_to h.t('admin.users.buttons.bp_before'),                  # Caption
                    h.new_admin_members_user_business_partner_path(model), # Destination
                    :class => h.set_button('primary', 'xs', true)          # CSS Class
        else
          h.link_to h.t('admin.users.buttons.bp_after'),                              # Caption
                    h.admin_members_business_partner_path(model.business_partner.id), # Destination
                    :class => h.set_button('info', 'xs', true)                        # CSS Class
        end
      when model.role_id == 3
        if model.business_partner.nil?
          h.link_to h.t('admin.users.buttons.representative_before'), # Caption
                    '#',                                              # Destination
                    :class => h.set_button('primary', 'xs', true)     # CSS Class
        else
          h.link_to h.t('admin.users.buttons.representative_after'), # Caption
                    '#',                                             # Destination
                    :class => h.set_button('info', 'xs', true)       # CSS Class
        end
      when model.role_id == 4
        if model.system_admin.nil?
          h.link_to h.t('admin.users.buttons.system_admin_before'),    # Caption
                    h.new_admin_members_user_system_admin_path(model), # Destination
                    :class => h.set_button('primary', 'xs', true)      # CSS Class
        else
          h.link_to h.t('admin.users.buttons.system_admin_after'),            # Caption
                    h.admin_members_system_admin_path(model.system_admin.id), # Destination
                    :class => h.set_button('info', 'xs', true)                # CSS Class
        end
      else
        'Something Wrong'
    end
  end

  def blacklisted?
    'checked' if model.blacklist_flg
  end
end





