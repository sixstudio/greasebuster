class CreateWhyuscols < ActiveRecord::Migration
  def change
    create_table :whyuscols do |t|
      t.string :title
      t.text :content
      t.string :img

      t.timestamps
    end
  end
end
