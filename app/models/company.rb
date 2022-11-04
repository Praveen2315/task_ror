class Company < ApplicationRecord
    has_and_belongs_to_many :users
 
   
    validates :name, :location, :technology, presence: true 
    validates :name, :location, length: { minimum: 4, maximum: 50 }
     # validates :name, :location, :technology, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }


end
