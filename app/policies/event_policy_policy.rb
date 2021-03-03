class EventPolicyPolicy < ApplicationPolicy
  def create?
    user.present?
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end

  private

  def user_is_owner?(event)
    user.present? && event.user == user
  end
end
