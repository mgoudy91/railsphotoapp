class AddVotetimeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :votetime, :timestamp
  end
end
