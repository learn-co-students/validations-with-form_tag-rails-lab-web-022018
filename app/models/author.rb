class Author < ActiveRecord::Base
  validates :name, presence: true # name is not blank
  validates :email, uniqueness: true# email is unique
  validates :phone_number, length: {is: 10}# phone_number is exactly 10 digits long

end
