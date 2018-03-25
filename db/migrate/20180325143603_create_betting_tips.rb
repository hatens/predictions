class CreateBettingTips < ActiveRecord::Migration[5.1]
  def change
    create_table :betting_tips do |t|
      t.string :date
      t.string :time
      t.integer :gameid

      t.timestamps
    end
  end
end
