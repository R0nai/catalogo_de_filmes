class Genre < ApplicationRecord
    has_many :Film
    has_many :director

    validates :name , presence: true
end
