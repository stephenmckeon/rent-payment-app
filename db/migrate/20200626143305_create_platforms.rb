class CreatePlatforms < ActiveRecord::Migration[6.0]
  def change
    create_table :platforms do |t|
      t.string :name
      t.string :developer
      t.string :release_date

      t.timestamps
    end
  end
end
