class Post < ApplicationRecord
  belongs_to :employee
  belongs_to :topic
  validates :body, presence: true, length: { minimum: 3, maximum: 250 }
end
