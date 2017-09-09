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

class User < ActiveRecord::Base
  include Gravtastic
  gravtastic

  # :lockable, :timeoutable
  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :trackable,
         :validatable,
         :confirmable,
         :omniauthable

  has_one :profile, dependent: :destroy
  has_many :favorites
  accepts_nested_attributes_for :profile, allow_destroy: true

  belongs_to :realestate_provider

  enum role: {
    :admin    => 'admin',
    :staff    => 'staff',
    :provider => 'provider',
    :customer => 'customer'
  }

  def self.has_oauth_user_exist(auth)
    user = User.where(uid: auth.uid, provider: auth.provider).first
    if user
      true
    else
      false
    end
  end

  def self.find_for_oauth(auth)
    user = User.where(uid: auth.uid, provider: auth.provider).first

    unless user
      user = User.new(
          uid:      auth.uid,
          provider: auth.provider,
          email:    User.dummy_email(auth),
          password: Devise.friendly_token[0, 20],
          role: :customer
      )
      user.build_profile
      user.save
    end

    user
  end

  def self.create_oauth_user(auth, name)
      user = User.new(
          uid:      auth.uid,
          name:     name,
          provider: auth.provider,
          email:    User.dummy_email(auth),
          password: Devise.friendly_token[0, 20],
          role: :customer
      )

      user.build_profile
      user.save

    user
  end

  private

  def self.dummy_email(auth)
    "#{auth.uid}-#{auth.provider}@example.com"
  end
end
