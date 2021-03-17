class Book < ApplicationRecord
  belongs_to :author
  belongs_to :publisher, optional: true
  
  acts_as_list scope: :author
  
  scope :visible,    -> {where(:visible => true)}
  scope :published,  -> {joins(:publisher)}
end
