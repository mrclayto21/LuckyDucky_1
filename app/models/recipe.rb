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
    
    CATEGORY = [
        ["Breakfast", 1], 
        ["Lunch", 2], 
        ["Dinner", 3], 
        ["Dessert", 4], 
        ["Drink", 5]
    ]
    
    SECONDARY = [
        ['-', 0], 
        ['Gluten-free', 1],
        ['Lactose-free', 2], 
        ['Vegan', 3], 
        ['Vegetarian', 4], 
        ['Low Calorie', 5], 
        ['Low Fat', 6], 
        ['Diabetic', 7], 
        ['Slow Cooker']
    ]
end
