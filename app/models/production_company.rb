class ProductionCompany < ApplicationRecord
    validates :company_name , presence: true , length: {minimum:2 , maximum: 20}
     has_and_belongs_to_many :movie
end
