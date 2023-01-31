class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  attr_accessor :comment
end
