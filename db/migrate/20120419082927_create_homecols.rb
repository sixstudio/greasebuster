class CreateHomecols < ActiveRecord::Migration
  def change
    create_table :homecols do |t|
      t.string :title
      t.string :subtitle
      t.text :content
      t.string :img

      t.timestamps
    end
  end
end
