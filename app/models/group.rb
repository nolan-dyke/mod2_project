class Group < ApplicationRecord
    has_many :joiners
    has_many :users, through: :joiners
    has_many :contents
end
