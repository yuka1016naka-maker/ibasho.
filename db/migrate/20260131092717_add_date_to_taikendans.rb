class AddDateToTaikendans < ActiveRecord::Migration[7.2]
  def change
    add_column :taikendans, :date, :date
  end
end
