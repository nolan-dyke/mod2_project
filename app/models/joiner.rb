class Joiner < ApplicationRecord
  belongs_to :user
  belongs_to :group

  def create(user, group)
    byebug 
    @joiner = Joiner.create(user_id: user,
    group_id: group)
  end 
end
