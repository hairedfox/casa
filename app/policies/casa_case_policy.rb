class CasaCasePolicy
  include PolicyHelper
  attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @record = record
  end

  class Scope
    attr_reader :user, :scope

    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      case @user.role
      when 'casa_admin'
        # scope.in_casa_administered_by(@user)
        scope.ordered
      when 'volunteer'
        scope.actively_assigned_to(user)
      else
        raise 'unrecognized role'
      end
    end
  end

  def update_case_number?
    user.casa_admin?
  end

  def permitted_attributes
    case @user.role
    when 'casa_admin'
      %i[case_number teen_program_eligible]
    else
      [:teen_program_eligible]
    end
  end

  # TODO: Uncomment and test the below as necessary, please.

  # def index?
  #   is_casa_admin_of_org?(user, record)
  # end

  # def show?
  #   is_casa_admin_of_org?(user, record)
  # end

  # def create?
  #   is_casa_admin_of_org?(user, record)
  # end

  # def new?
  #   is_casa_admin_of_org?(user, record)
  # end

  # def update?
  #   is_casa_admin_of_org?(user, record)
  # end

  # def edit?
  #   is_casa_admin_of_org?(user, record)
  # end

  # def destroy?
  #   is_casa_admin_of_org?(user, record)
  # end
end