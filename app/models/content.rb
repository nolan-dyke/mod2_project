class Content < ApplicationRecord
    belongs_to :group
    belongs_to :user
    has_many :thoughts
    has_many :states
end
