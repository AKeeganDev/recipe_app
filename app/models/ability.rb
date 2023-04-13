# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, :all

    if user.is? :admin
      can :manage, Recipe
    else
      can :manage, Recipe, user: user
    end

    # return unless user.present?  # additional permissions for logged in users (they can read their own posts)
    # can :manage, Recipe, user: user

    # return unless user.admin?  # additional permissions for administrators
    # can :manage, Recipe
  end
end
