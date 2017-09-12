class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    if user.admin?
      can :manage, :all
      can :manage, :admin
    elsif user.staff?
      # can :manage, :all
      can :manage, Apartment
      can [:read, :create, :update], Provider
      can :read, User
    elsif user.provider?
      can :manage, Apartment, ["provider_id = ?" , user.provider_id] do |record|
        record.provider_id == user.provider_id
      end

      can [:read, :update], Provider, ["id = ?" , user.provider_id] do |record|
        record.id == user.provider_id
      end

      can [:read, :update], User, ["provider_id = ?" , user.provider_id] do |record|
        record.provider_id == user.provider_id
      end
    elsif user.customer?
      can :read, :all
    end
  end
end
