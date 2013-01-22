class CreateDrafts < ActiveRecord::Migration
  def change
    create_table :drafts do |t|
      t.integer :d_round
      t.string :d_team
      t.string :d_player
      t.string :d_position

      t.timestamps
    end
  end
end
