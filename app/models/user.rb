class User < ApplicationRecord
  validates :email, :phone_number, uniqueness: :true
  validates :phone_number, :first_name, :last_name, :email, presence: :true
  has_secure_password
  has_many :couches
  has_many :reservations
  has_one  :profile, dependent: :destroy

  def author_name
    "#{first_name.capitalize} #{last_name.capitalize.first}."
  end

end
