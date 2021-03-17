class Book < ApplicationRecord
  belongs_to :author
  belongs_to :publisher, optional: true
  
  acts_as_list scope: :author

  validates :title, presence: true 
  validates :isbn, presence: true, numericality: true, uniqueness: true
  
  scope :visible,    -> {where(:visible => true)}
  scope :published,  -> {joins(:publisher)}
end
