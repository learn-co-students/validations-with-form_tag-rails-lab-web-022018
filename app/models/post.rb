class Post < ActiveRecord::Base
  validates :title, presence: true # title is not blank
  validates :content, presence: true # title is not blank
  validates :content, length: {minimum: 100}# content is at least 100 characters long
  validates :category, inclusion: %w(Fiction Non-Fiction) # category is either "Fiction" or "Non-Fiction"

end
