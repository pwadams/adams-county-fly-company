class AddDateToUsers < ActiveRecord::Migration
  def change
    add_column :users, :date, :string
  end
end
