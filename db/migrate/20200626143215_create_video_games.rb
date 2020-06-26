class CreateVideoGames < ActiveRecord::Migration[6.0]
  def change
    create_table :video_games do |t|
      t.string :name
      t.string :release_date
      t.string :genre
      t.integer :platform_id

      t.timestamps
    end
  end
end
