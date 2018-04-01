class CreateBetTips < ActiveRecord::Migration[5.1]
  def change
    create_table :bet_tips do |t|
      t.string :date
      t.string :time
      t.integer :gameid
      t.string :teams
      t.string :odds
      t.string :selection

      t.timestamps
    end
  end
end
