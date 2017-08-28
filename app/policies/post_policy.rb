class PostPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    # Anyone can view the index
    true
  end

  def show?
    # Anyone can view any post
    true
  end

  def create?
    # Only admin can create posts
    user_logged_in_and_admin?
  end

  private

  def user_logged_in_and_admin?
    user && user.admin
  end
end


