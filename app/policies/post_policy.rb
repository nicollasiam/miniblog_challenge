class PostPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end

    def index?
      true
    end

    def show?
      true
    end

    def create?
      user_loggedin_and_admin?
    end

    private

    def user_loggedin_and_admin?
      user_signed_in? && current_user.admin
    end

  end
end
