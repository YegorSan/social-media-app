class Ability
  include CanCan::Ability

  def initialize(user)
      
      if user.admin?
          
          can :manage, :all
          
          else
          
          can :update, Post do |post|
              post.user == user
          end
          
          can :destroy, Post do |post|
              post.user == user
          end
          
         
          
          
          can :create, Post
       
      
          
      end
  end
end
