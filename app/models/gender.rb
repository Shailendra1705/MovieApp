class Gender < ApplicationRecord
    validates :gender, presence: true, inclusion: {in: %w(male femal others), message:"%{value} is not a valid gender"}
end
