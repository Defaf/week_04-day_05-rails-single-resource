class Wizard < ApplicationRecord
    validates :fisrt_name, :last_name, presence: true 
    #validates :fisrt_name , uniqueness: true 
    validates_uniqueness_of :fisrt_name, :scope => :last_name
    validates_length_of :fisrt_name, :last_name, minimum: 2 , maximum: 50
end
