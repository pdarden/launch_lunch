class Dish < ActiveRecord::Base
  validates_presence_of :name
  has_many :comments,
    inverse_of: :dish
  belongs_to :category,
    inverse_of: :dishes
  belongs_to :restaurant,
    inverse_of: :dishes

  def price_in_dollars
    "#{'%.2f' % (price_in_cents.to_d / 100) if price_in_cents}"
  end

  def price_in_dollars=(dollars)
    dollars = dollars.to_s.gsub(/[^0-9\.]+/, '')
    self.price_in_cents = dollars.to_d * 100 if dollars.present?
  end
end
