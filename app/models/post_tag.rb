# frozen_string_literal: true

class ArticleTag < ApplicationRecord
  belongs_to :post
  belongs_to :tag
end
