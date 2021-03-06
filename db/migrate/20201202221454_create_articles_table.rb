# frozen_string_literal: true

class CreateArticlesTable < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :title, null: false
      t.string :author, null: false
      t.text :body, null: false
      t.string :picture
      t.string :url
      t.timestamps
    end
  end
end
