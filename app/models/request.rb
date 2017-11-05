class Request < ApplicationRecord
  has_and_belongs_to_many :employees, :join_table => :employees_requests
  has_many :topics
  validates :client_last, presence: true, length: { minimum: 3, maximum: 50 }, uniqueness: true
  validates :client_first, presence: true, length: { minimum: 3, maximum: 50 }, uniqueness: true
  validates :client_mail, presence: true, length: { minimum: 3, maximum: 50 }, uniqueness: true
  
end
