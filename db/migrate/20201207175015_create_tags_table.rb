class CreateTagsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :tags do |t|
      t.string :tag, null: false
    end
  end
end
