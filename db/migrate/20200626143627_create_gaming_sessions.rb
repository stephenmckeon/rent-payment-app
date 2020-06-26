class CreateGamingSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :gaming_sessions do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.integer :rating
      t.integer :gamer_id
      t.integer :video_game_id

      t.timestamps
    end
  end
end
