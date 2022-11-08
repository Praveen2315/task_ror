class User < ApplicationRecord
    has_and_belongs_to_many :companies
   
    validates :name, :email_id, :phone_no, presence: true 
    validates :name, length: { minimum: 4, maximum: 50 }
    validates :email_id, confirmation: { case_sensitive: false }
        
end
