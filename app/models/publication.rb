class Publication < ApplicationRecord
  has_many  :faculty_publications
  has_many :faculties, through:  :faculty_publications
end
