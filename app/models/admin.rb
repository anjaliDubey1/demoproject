class Admin < ApplicationRecord
    has_many :hrs 
    has_many :employees
    has_one_attached :image
    
    validates :name,presence: true
    validates :age,presence: true
    validates :phone_no,presence: true
    validates :address,presence: true  
    validates :phone_no, format: { with: /\A\d{10}\z/,message: "only allows 10 munbers" }
    #validates :email, format: { with: Devise.email_regexp }         
    #  validate :age_verify
    # def age_verify
    #     if age < 18
    #       errors.add(:age, "can't be lessthan 18") 
    #     end
    # end
end
