class Message < ApplicationRecord
  validates :body, presence: true
  validates :email, presence: true
  validates :name, presence: true
end
