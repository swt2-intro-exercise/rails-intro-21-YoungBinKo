class Paper < ApplicationRecord
    validates :title, :venue, presence: true, length: {minimum: 1}
    validates :year, presence:true, numericality: { only_integer: true}
    has_and_belongs_to_many :authors
    def self.published_in(integer)
            where("year = ?", integer)
    end
end
