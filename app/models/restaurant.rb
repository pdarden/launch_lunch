class Restaurant < ActiveRecord::Base
  validates_presence_of :name
  has_many :dishes,
    inverse_of: :restaurant
end
