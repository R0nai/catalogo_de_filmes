class Genre < ApplicationRecord
    has_many :Film
    has_many :director
end
