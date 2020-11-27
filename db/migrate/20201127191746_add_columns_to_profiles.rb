class AddColumnsToProfiles < ActiveRecord::Migration[6.0]
  def change
    add_column :profiles, :text_three, :text
    add_column :profiles, :text_four, :text
    add_column :profiles, :text_five, :text
    add_column :profiles, :text_six, :text
  end
end
