class CreateGameWords < ActiveRecord::Migration
  def change
    create_table :game_words do |t|
      t.integer :game_id
      t.integer :word_id
      t.string :text

      t.timestamps null: false
    end
  end
end
