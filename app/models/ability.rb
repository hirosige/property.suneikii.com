class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    if user.admin?
      can :manage, :all
    elsif user.staff?

    elsif user.provider?

    elsif user.customer?
      can :manage, :read
    end
  end
end
