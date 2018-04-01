class CreateBlogs < ActiveRecord::Migration[5.1]
  def change
    create_table :blogs do |t|
      t.string :date
      t.string :time
      t.string :text
      t.string :title

      t.timestamps
    end
  end
end
