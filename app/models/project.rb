class Project < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy

  validates :status, inclusion: { in: ['Pending', 'In Progress', 'Completed'] }
  validates :description, length: { maximum: 1000 }, allow_blank: true
end
