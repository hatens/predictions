class ChangeColorToColour < ActiveRecord::Migration[5.1]
  def change
  	rename_column :bet_tips, :teams, :visitteam
  end
end
