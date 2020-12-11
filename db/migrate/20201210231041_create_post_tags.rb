# frozen_string_literal: true

class CreatePostTags < ActiveRecord::Migration[6.0]
  def change
    create_table :post_tags do |t|
      t.belongs_to :post, null: false
      t.belongs_to :tag, null: false
    end
  end
end
