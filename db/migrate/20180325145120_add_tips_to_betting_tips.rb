class AddTipsToBettingTips < ActiveRecord::Migration[5.1]
  def change
    add_column :betting_tips, :Tips, :string
  end
end
