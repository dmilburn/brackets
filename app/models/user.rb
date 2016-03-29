class User < ActiveRecord::Base
  has_secure_password
  has_many :brackets
  has_many :organized_competitions, :foreign_key => "organizer_id", :class_name => "Competition"
  has_many :competitions, through: :brackets

  validates :email, uniqueness: true, presence: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :password, length: { minimum: 6 }, :if => :password
  validates :password_confirmation, presence: true, :if => :password_confirmation

end
