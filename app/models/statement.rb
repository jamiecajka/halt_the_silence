class Statement < ApplicationRecord
  validates: :body, presence: true
  validates: :language, presence: true
end
