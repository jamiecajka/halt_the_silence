class Statement < ApplicationRecord
  validates :body, presence: true
  validates :language, presence: true
  validates :ordinal, presence: true
end
