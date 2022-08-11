class Episode < ApplicationRecord
    has_one :race
    has_many :reviews
    has_many :users, through: :reviews

end
