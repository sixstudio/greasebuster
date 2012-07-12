class Slide < ActiveRecord::Base
  attr_accessible :image, :path, :target
  has_attached_file :image, :styles => { :medium => "950x350>", :thumb => "100x100>" }
end

