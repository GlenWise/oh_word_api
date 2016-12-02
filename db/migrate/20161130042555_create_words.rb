class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :description
      t.integer :index
      t.integer :song_id
      t.timestamps null: false
    end
  end
end
