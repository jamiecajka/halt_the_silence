# frozen_string_literal: true

class Article < ApplicationRecord
  mount_uploader :picture, ArticlePhotoUploader

  has_many :article_tags
  has_many :tags, through: :article_tags

  validates :title, presence: true
  validates :author, presence: true
  validates :body, presence: true
end
