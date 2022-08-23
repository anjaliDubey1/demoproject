class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :phone_no, format: { with: /\A\d{10}\z/,message: "only allows 10 munbers" }
  validate :age_verify
  def age_verify
    if age < 18
      errors.add(:age, "can't be lessthan 18") 
    end
  end
end
