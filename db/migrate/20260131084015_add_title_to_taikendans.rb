class AddTitleToTaikendans < ActiveRecord::Migration[7.2]
  def change
    add_column :taikendans, :title, :string
  end
end
