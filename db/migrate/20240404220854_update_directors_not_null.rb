class UpdateDirectorsNotNull < ActiveRecord::Migration[7.1]
  def change
    change_column_null :directors, :name, false
    change_column_null :directors, :nationality, false
    change_column_null :directors, :dob, false
  end
end
