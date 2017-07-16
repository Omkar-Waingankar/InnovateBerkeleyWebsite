class AddFieldsToUsers < ActiveRecord::Migration[5.0]
  def change
  	add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :user_type, :string
    add_column :users, :school_year, :string
    add_column :users, :major, :string
    add_column :users, :links, :string
    add_column :users, :theme, :string
    add_column :users, :interests, :string
    add_column :users, :involvements, :string
    add_column :users, :about, :string
    add_column :users, :gravatar_email, :string
  end
end
