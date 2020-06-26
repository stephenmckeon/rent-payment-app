class CreateGamers < ActiveRecord::Migration[6.0]
  def change
    create_table :gamers do |t|

      t.timestamps
    end
  end
end
