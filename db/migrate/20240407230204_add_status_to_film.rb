class AddStatusToFilm < ActiveRecord::Migration[7.1]
  def change
    add_column :films, :status, :integer, default: 0
  end
end
