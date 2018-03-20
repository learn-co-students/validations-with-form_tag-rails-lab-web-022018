class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: {minimum: 100, message: "Minimum length 100 characters"}
  validates :category, inclusion: {in: %w(Fiction Non-Fiction), message: "Must be Fiction or Non-Fiction"}
end
