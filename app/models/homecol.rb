class Homecol < ActiveRecord::Base
  attr_accessible :image, :title, :subtitle, :content
  has_attached_file :image, :styles => { :medium => "209x102", :thumb => "100x100>" }
end
