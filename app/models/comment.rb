class Comment < ActiveRecord::Base
  attr_accessible :text
  belongs_to :post
  belongs_to :user

  validates_length_of :text, :minimum => 5, :maximum => 160
  validates :text, :presence => true

end
