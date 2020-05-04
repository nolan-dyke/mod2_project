class Content < ApplicationRecord
    belongs_to :group
    belongs_to :user
    has_many :thoughts
end
