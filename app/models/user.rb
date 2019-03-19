class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :posts

  # before_save :assign_default_role, on: :create, if: :roleless?

  def admin?
    role == "admin"
  end

  def regular?
    role == "regular"
  end

  def quest?
    role == "guest"
  end

  # def roleless?
  #   role==nil
  # end

  # https://github.com/plataformatec/devise/wiki/How-To:-Allow-users-to-sign_in-using-their-username-or-email-address#overwrite-devises-finder-methods-in-users
  # protected

  # def assign_default_role
  #   role << "regular"
  # end
  
end
