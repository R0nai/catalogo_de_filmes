class UpdateFilmsNotNull < ActiveRecord::Migration[7.1]
  def change
    change_column_null :films, :title, false
    change_column_null :films, :year, false
    change_column_null :films, :synopsis, false
    change_column_null :films, :country, false
    change_column_null :films, :duration, false
  end
end
