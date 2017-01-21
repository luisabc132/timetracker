class Project < ApplicationRecord
  has_many :time_entries
  validates :name, presence: true
end
