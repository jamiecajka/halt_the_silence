class Profiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.text :text_one, null: false
      t.string :url, null: false
      t.text :text_two
    end
  end
end
