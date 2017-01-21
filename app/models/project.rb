class Project < ApplicationRecord
  has_many :time_entries
  validates :name, presence: true
  def self.clean_old
    # Project.where(created_at: Date.today - 1.week).destroy_all
    where('created_at < ?', Date.today - 1.week).destroy_all

  end
end
