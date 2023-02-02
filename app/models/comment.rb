class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  attr_accessor :comment

end
