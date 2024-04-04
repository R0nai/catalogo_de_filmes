class Director < ApplicationRecord
    belongs_to :genre
    has_many :Film  
end
