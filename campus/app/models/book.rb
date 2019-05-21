class Book < ApplicationRecord
    belongs_to :author
    validates :title, :originalLanguage, :printDate, presence: true 
    validates_length_of :title , minimum: 2 , maximum: 50
    validates :title , uniqueness: true
    validates_format_of :originalLanguage,  {with:/\A[A-Z]*\z/i ,message:  "Language must be capitalized letters."}
    validates_format_of :printDate,  {with:/\d{4}-\d{2}-\d{2}/ ,message:  "Date format must be yyyy/mm/dd ."}

end
