class UpdateGenresNotNull < ActiveRecord::Migration[7.1]
  def change
    change_column_null :genres, :name, false
  end
end
