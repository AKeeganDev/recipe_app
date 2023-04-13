class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, :all

    return unless user.present? # additional permissions for logged in users (they can read their own posts)

    can(:manage, Recipe, user:)

    return unless user.admin? # additional permissions for administrators

    can :manage, :all
  end
end
