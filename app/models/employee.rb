class Employee < ApplicationRecord
  has_and_belongs_to_many :requests, :join_table => :employees_requests
  has_many :topics
  has_many :posts
  validates :last_name, presence: true, length: { minimum: 3, maximum: 100 }
  validates :first_name, presence: true, length: { minimum: 3, maximum: 50 }
  validates :nickname, presence: true, length: { minimum: 3, maximum: 50 }, uniqueness: true
  validates :function, presence: true, length: { minimum: 3, maximum: 30 }
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }

  def follows?(request)
    self.requests.include?(request)
  end
end
