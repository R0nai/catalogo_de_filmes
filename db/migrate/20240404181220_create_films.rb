class CreateFilms < ActiveRecord::Migration[7.1]
  def change
    create_table :films do |t|
      t.string :title
      t.integer :year
      t.text :synopsis
      t.string :country
      t.integer :duration

      t.timestamps
    end
  end
end
