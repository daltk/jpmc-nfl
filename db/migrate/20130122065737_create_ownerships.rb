class CreateOwnerships < ActiveRecord::Migration
  def change
    create_table :ownerships do |t|
      t.integer :round
      t.integer :pick
      t.string :team_name

      t.timestamps
    end
  end
end
