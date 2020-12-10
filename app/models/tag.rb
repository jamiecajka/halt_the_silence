# frozen_string_literal: true

class Tag < ApplicationRecord
  has_many :article_tags
  has_many :articles, through: :article_tags
  has_many :post_tags
  has_many :posts, through: :post_tags

  validates :tag, presence: true, uniqueness: true
end
