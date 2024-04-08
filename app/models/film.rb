class Film < ApplicationRecord
    enum status: {upcoming: 0, released: 1 }
    has_one_attached :image
    belongs_to :genre
    belongs_to :director

    validates :title, presence: true
    validates :year, presence: true
    validates :synopsis, presence: true
    validates :country, presence: true
    validates :duration, presence: true
end
