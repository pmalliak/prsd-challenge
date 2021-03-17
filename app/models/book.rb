class Book < ApplicationRecord
  belongs_to :author
  belongs_to :publisher, optional: true
  
  scope :visible,    -> {where(:visible => true)}
  scope :published,  -> {joins(:publisher)}
end
