# frozen_string_literal: true

class CreatePolicies < ActiveRecord::Migration[6.0]
  def change
    create_table :policies do |t|
      t.string :header
      t.text :body
    end
  end
end
