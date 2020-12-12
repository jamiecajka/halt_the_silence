class AddDateToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :created_at, :datetime, null: false
    add_column :posts, :updated_at, :datetime, null: false
  end
end
