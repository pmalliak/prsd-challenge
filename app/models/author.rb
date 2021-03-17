class Author < ApplicationRecord
  has_many :books
  
  validates :first_name, presence: true  
  validates :last_name, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } , uniqueness: { case_sensitive: false }, presence: true
  
  def full_name
    return [self.first_name, self.last_name].join(" ")
  end
end
