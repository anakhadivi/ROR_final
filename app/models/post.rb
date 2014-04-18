class Post < ActiveRecord::Base
	belongs_to :user
	has_attached_file :image, :styles => { :medium => "200x200>", :thumb => "60x60>" }, 
	:default_url => "/images/default_:style_avatar.png"
end
