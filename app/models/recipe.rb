class Recipe < ApplicationRecord
    has_many :comments, dependent: :destroy
    validates :userName, presence: true
    validates :prime, presence: true
    validates :name, presence: true
    validates :prep, presence: true
    validates :complete, presence: true
    validates :ingredients, presence: true
    validates :directions, presence: true
    validates :secondary, presence: true
end
