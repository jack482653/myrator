class Company < ApplicationRecord
  has_many :jobs
  validates :name, presence: true, length: { maximum: 50 }
  validates :introduction, presence: true
  validates :vision, presence: true
  validates :news, presence: true
  validates :salary_welfare, presence: true
  validates :enabled, presence: true
end
