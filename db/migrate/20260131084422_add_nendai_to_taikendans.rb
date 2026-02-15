class AddNendaiToTaikendans < ActiveRecord::Migration[7.2]
  def change
    add_column :taikendans, :nendai, :string
  end
end
