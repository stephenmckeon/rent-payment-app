class CreateGamingSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :gaming_sessions do |t|

      t.timestamps
    end
  end
end
