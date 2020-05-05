class User < ApplicationRecord
    has_many :joiners
    has_many :groups, through: :joiners
    has_many :contents
    has_many :thoughts
    has_many :states
end
