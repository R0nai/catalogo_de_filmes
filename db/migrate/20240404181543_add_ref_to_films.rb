class AddRefToFilms < ActiveRecord::Migration[7.1]
  def change
    add_reference :films, :director, null: false, foreign_key: true
    add_reference :films, :genre, null: false, foreign_key: true
  end
end
