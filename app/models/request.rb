class Request < ApplicationRecord
  has_and_belongs_to_many :employees, :join_table => :employees_requests
  has_many :topics
  validates :client_last, presence: true, length: { minimum: 3, maximum: 50 }
  validates :client_first, presence: true, length: { minimum: 3, maximum: 50 }
  validates :client_mail, presence: true, length: { minimum: 3, maximum: 50 }
  validates :cost, presence: true, numericality: {}
  before_save :set_number, :costVAT

  def set_number
    self.number_employee ||=0
  end

  def more_employees
    self.update_attributes(:number_employee => self.number_employee+1)
  end

  def less_employees
    self.update_attributes(:number_employee => self.number_employee-1)
  end

  def how_much
    self.update_attributes(:costVAT => self.cost*1.23)
  end
end
