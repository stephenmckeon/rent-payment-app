class CreateVideoGames < ActiveRecord::Migration[6.0]
  def change
    create_table :video_games do |t|

      t.timestamps
    end
  end
end
