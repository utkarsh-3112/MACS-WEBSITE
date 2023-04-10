class Faculty < ApplicationRecord
  has_many :faculty_publications
  has_many :publications, through: :faculty_publications
  has_many :research_consultancies
  has_many :research_scholars
end
