# frozen_string_literal: true

class CreateStatements < ActiveRecord::Migration[6.0]
  def change
    create_table :statements do |t|
      t.string :header
      t.text :body
    end
  end
end
