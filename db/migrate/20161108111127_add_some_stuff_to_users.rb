class AddSomeStuffToUsers < ActiveRecord::Migration
  def change
      add_column :users, :first_name, :string 
      add_column :users, :last_name, :string
      add_column :users, :profile_name, :string
  end
end
