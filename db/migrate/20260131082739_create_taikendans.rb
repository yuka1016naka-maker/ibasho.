class CreateTaikendans < ActiveRecord::Migration[7.2]
  def change
    create_table :taikendans do |t|
      t.text :body

      t.timestamps
    end
  end
end
