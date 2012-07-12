class CreateAdminContactcols < ActiveRecord::Migration
  def change
    create_table :admin_contactcols do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :phone
      t.text :description

      t.timestamps
    end
  end
end
