# frozen_string_literal: true

class Post < ApplicationRecord
  mount_uploader :picture, PostsPhotoUploader
  has_many :post_tags
  has_many :tags, through: :post_tags

  validates :title, presence: true
  validates :author, presence: true
  validates :catagory, presence: true
  validates :body, presence: true
end
