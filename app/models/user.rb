class User < ApplicationRecord
  has_secure_password
  
  validates :email, uniqueness: { case_sensitive: false}, presence:true 
  validates :name, presence: true
  validates :password, presence: true, confirmation: true, length: { minimum: 5 }
  validates :password_confirmation, presence: true
end
