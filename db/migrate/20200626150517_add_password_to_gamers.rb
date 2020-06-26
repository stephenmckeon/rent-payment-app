class AddPasswordToGamers < ActiveRecord::Migration[6.0]
  def change
    add_column :gamers, :password, :string
  end
end
