class CreateSteps < ActiveRecord::Migration[6.0]
  def change
    create_table :steps do |t|
      t.text :text, null: false
    end
  end
end
