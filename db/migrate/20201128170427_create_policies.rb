class CreatePolicies < ActiveRecord::Migration[6.0]
  def change
    create_table :policies do |t|
      t.string :name, null: false
      t.text :body, null: false
    end
  end
end
