class Paper < ApplicationRecord
    validates :title, presence: true
    validates :venue, presence: true
    validates :year, presence: true, numericality: true

    has_and_belongs_to_many :authors

    scope :in_year, ->(year) { where("year = ?", year) }
end
