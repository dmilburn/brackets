class Competition < ActiveRecord::Base
  belongs_to :show
  has_many :brackets
  belongs_to :organizer, :class_name => 'User'
  has_many :rules
  has_many :users, through: :brackets

  validates :title, :organizer_id, :show_id, presence: true
end
