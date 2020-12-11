# frozen_string_literal: true

class CreateArticleTags < ActiveRecord::Migration[6.0]
  def change
    create_table :article_tags do |t|
      t.belongs_to :article, null: false
      t.belongs_to :tag, null: false
    end
  end
end
