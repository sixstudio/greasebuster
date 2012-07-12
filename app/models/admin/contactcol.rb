class Admin::Contactcol < ActiveRecord::Base
  attr_accessible :image, :name, :address, :city, :phone, :description  
  has_attached_file :image, :styles => { :medium => "970x170>", :thumb => "100x100>" }
end
