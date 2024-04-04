class Film < ApplicationRecord
    belongs_to :genre
    belongs_to :director

    validates :title, presence: true
    validates :year, presence: true
    validates :synopsis, presence: true
    validates :country, presence: true
    validates :duration, presence: true
end
