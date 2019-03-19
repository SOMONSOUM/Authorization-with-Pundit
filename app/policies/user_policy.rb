class UserPolicy < ApplicationPolicy


  

  def permitted_attributes
    user_attributes = [
      :name,
      :email,
      :password,
      :phone_number
    ]

    user_attributes << [:role, :email, :password]

    user_attributes
  end
end
