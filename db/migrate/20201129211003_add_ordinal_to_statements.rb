# frozen_string_literal: true

class AddOrdinalToStatements < ActiveRecord::Migration[6.0]
  def change
    add_column :statements, :ordinal, :integer
  end
end
