class Aboutcol < ActiveRecord::Base
  attr_accessible :image, :title, :content
  has_attached_file :image, :styles => { :medium => "970x170>", :thumb => "100x100>" }
end
