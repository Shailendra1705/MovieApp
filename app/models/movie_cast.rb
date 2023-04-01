class MovieCast < ApplicationRecord
  belongs_to :movie
  belongs_to :gender
  belongs_to :person
end
