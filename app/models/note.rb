class Note < ActiveRecord::Base
  attr_accessible :color, :text, :title
  validates :title, :presence => true, :length => { :maximum => 10 }
  validates :text, :presence => true, :length => { :maximum => 100 }
end
