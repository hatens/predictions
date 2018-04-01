class AddHomeTeamToBetTips < ActiveRecord::Migration[5.1]
  def change
    add_column :bet_tips, :hometeam, :string
  end
end
