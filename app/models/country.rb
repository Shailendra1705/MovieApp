class Country < ApplicationRecord
    has_many  :production_countries
    
    validates :country_iso_code ,presence: true , length: {maximum: 6}
    validates :country_name , presence: true 
end
