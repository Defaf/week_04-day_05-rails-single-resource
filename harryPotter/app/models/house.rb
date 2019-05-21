class House < ApplicationRecord
    has_many :wizards, dependent: :destroy 
    validates :name, presence: true 
    validates :name , uniqueness: true 
    validates_format_of :name,  {with:/\w*[A-Z]/ ,message:  "First letter must be capitalized."}
    validates :animal, exclusion: { in: %w(cat dog bird) , message: "can not be cat, dog or bird" },:presence => true, :on => :update
    validates :slogan,:presence => true, :on => :update

end
