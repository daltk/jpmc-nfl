class AddSelectedStatustoPlayer < ActiveRecord::Migration
  def up
  	add_column :players, :status, :string
  end

  def down
  end
end
