class User < ActiveRecord::Base
  has_secure_password
  has_many :brackets
  has_many :organized_competitions, :foreign_key => "organizer_id", :class_name => "Competition"
  has_many :competitions, through: :brackets
end
