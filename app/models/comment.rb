class Comment < ActiveRecord::Base
  validates_presence_of :body, :author, :dish_id
  belongs_to :dish,
    inverse_of: :comments
end
