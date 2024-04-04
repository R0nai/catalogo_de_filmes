class Director < ApplicationRecord
    belongs_to :genre
    has_many :Film

    validates :name , presence: true
    validates :nationality , presence: true
    validates :dob , presence: true
end
