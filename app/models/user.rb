class User < ApplicationRecord
  has_secure_password

  validates :email, uniqueness: { case_sensitive: false}, presence:true 
  validates :name, presence: true
  validates :password, presence: true, confirmation: true, length: { minimum: 5 }
  validates :password_confirmation, presence: true

  def self.authenticate_with_credentials(email, password)
    @user = User.find_by(email: email.strip.downcase)  
    if @user && @user.authenticate(password)
      return @user
    else
      return nil
    end
  end

end
