class RemoveColumnRiverAndColumnDateFromTable < ActiveRecord::Migration
  def change
    remove_column :users, :river, :text
    remove_column :users, :date, :string
  end
end
