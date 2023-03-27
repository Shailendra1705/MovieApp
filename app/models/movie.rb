class Movie < ApplicationRecord
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
end
