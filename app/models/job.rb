class Job < ApplicationRecord
  belongs_to :company
  validates :name, presence: true, length: { maximum: 50 }
  validates :description, presence: true
  validates :requirement, presence: true
  validates :welfare, presence: true
  validates :salary_range, presence: true
end
