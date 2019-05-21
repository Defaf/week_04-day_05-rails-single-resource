class Author < ApplicationRecord
    has_many :books, dependent: :destroy 
    validates :firstName, :lastName, :location ,:age, :homeTown, presence: true 
    # validates :firstName, :lastName, length: { minimum: 2 }
    validates_length_of :firstName, :lastName, minimum: 2
    validates_numericality_of :age, { greater_than_or_equal_to:18 ,less_than_or_equal_to: 180,  only_integer: true }
end
