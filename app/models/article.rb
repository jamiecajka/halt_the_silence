# frozen_string_literal: true

class Article < ApplicationRecord
  mount_uploader :picture, ArticlePhotoUploader

  validates :title, presence: true
  validates :author, presence: true
  validates :body, presence: true
end
