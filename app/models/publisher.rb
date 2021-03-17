class Publisher < ApplicationRecord
  has_many :books
  
  validates :name, presence: true 
  validates :telephone, presence: true, uniqueness: true
end
