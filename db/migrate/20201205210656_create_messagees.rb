# frozen_string_literal: true

class CreateMessagees < ActiveRecord::Migration[6.0]
  def change
    create_table :messagees do |t|
      t.string :subject, null: false
      t.text :body, null: false
      t.string :email, null: false
    end
  end
end
