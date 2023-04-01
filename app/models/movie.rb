class Movie < ApplicationRecord
    has_many :movie_company
    has_many :production_company , through: :movie_company
    validates :title , presence: true , length: {minimum: 2}
    validates :budget , presence: true
    validates :homepage, presence: true
    validates :overview ,presence: true
    validates :popularity , presence: true
    validates :release_data , presence: true
    validates :revenue, presence: true
    validates :runtime, presence: true
    validates :movie_status , inclusion: {in: %w(pending announced released), message:"%{value} is not valid status"}
    validates :tagline , presence: true
    validates :votes_avg , presence: true
    validates :votes_count , presence: true
    
    
    before_validation :assign_values

    #functions for validations should always be private to increase encapsulation 

    private 

    def assign_values 
        self.votes_avg = 0.0 if votes_avg.blank?
        self.votes_count = 0 if votes_count.blank?      
    end
end
