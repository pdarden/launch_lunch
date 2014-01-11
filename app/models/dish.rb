class Dish < ActiveRecord::Base
  validates_presence_of :name
  has_many :comments,
    inverse_of: :dish
  belongs_to :category,
    inverse_of: :dishes
  belongs_to :restaurant,
    inverse_of: :dishes
end
