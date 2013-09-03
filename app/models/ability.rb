# rails g cancan:ability
#
class Ability
  include CanCan::Ability

  def initialize(player)

    if player.is_master?
            can :manage, :all
        else
            #can :read, :all
            can [:index,:show,:list], Service
            can [:index,:show,:list], Region
            can [:index,:list], Category
            can [:index,:list], Player
            can [:index], Zone 
            can [:index], Site
            can [:index,:list,:new,:create],Page

        end
    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the user 
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on. 
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/ryanb/cancan/wiki/Defining-Abilities
  end
end
