class Competition < ActiveRecord::Base
  belongs_to :show
  has_many :brackets
  belongs_to :organizer, :class_name => 'User'
  has_many :rules
  has_many :users, through: :brackets
end
