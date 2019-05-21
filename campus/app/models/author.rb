class Author < ApplicationRecord
    has_many :books, dependent: :destroy 
    validates :firstName, :lastName, presence: true 
end
