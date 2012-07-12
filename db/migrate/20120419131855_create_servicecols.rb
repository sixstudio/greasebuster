class CreateServicecols < ActiveRecord::Migration
  def change
    create_table :servicecols do |t|
      t.string :title
      t.text :content
      t.string :img

      t.timestamps
    end
  end
end
