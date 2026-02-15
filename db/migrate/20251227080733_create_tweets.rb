class CreateTweets < ActiveRecord::Migration[7.2]
  def change
    create_table :tweets do |t|
      t.string :gakuen
      t.datetime :hiduke
      t.text :naiyou
      t.string :category
      t.string :schoolmei
      t.string :jyusho
      t.timestamps
    end
  end
end