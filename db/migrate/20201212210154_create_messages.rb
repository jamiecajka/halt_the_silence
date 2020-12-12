class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.string :email, null: false
      t.string :name, null: false
      t.text :body, null: false
      t.timestamps
    end
  end
end
