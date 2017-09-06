# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  confirmation_token     :string(255)
#  confirmed_at           :datetime
#  confirmation_sent_at   :datetime
#  unconfirmed_email      :string(255)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  blacklist_flg          :boolean
#  role_id                :integer
#  uid                    :string(255)
#  provider               :string(255)
#  provider_id            :integer
#  name                   :string(255)
#  role                   :string(255)      default("customer"), not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#

module UsersHelper
  def admin?
    return false unless valid?
    return true if current_user.role.id == 4
    false
  end

  def tenant?
    return false unless valid?
    return true if current_user.role.id == 3
    false
  end

  def bp?
    return false unless valid?
    return true if current_user.role.id == 2
    false
  end

  def user?
    return false unless valid?
    return true if current_user.role.id == 1
    false
  end

  def valid?
    return false unless user_signed_in?
    return false if current_user.role.nil?
    true
  end
end
