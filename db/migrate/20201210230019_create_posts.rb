class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.string :author, null: false
      t.string :catagory, null: false
      t.text :body, null: false
    end
  end
end
