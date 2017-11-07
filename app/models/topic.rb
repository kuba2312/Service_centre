class Topic < ApplicationRecord
  belongs_to :employee
  belongs_to :request
  has_many :posts
  validates :title, presence: true, length: { minimum: 3, maximum: 50 }
end
