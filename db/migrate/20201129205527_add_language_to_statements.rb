class AddLanguageToStatements < ActiveRecord::Migration[6.0]
  def change
    add_column :statements, :language, :text
  end
end
