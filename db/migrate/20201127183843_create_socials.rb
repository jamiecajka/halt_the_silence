class CreateSocials < ActiveRecord::Migration[6.0]
  def change
    create_table :socials do |t|
      t.string :twitter, null: false
      t.string :tumblr, null: false
      t.string :tiktok, null: false
      t.string :instagram, null: false
      t.string :facebook, null: false
      t.string :youtube, null: false
      t.string :reddit, null: false
    end
  end
end
