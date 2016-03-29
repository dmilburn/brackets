class Bracket < ActiveRecord::Base
  belongs_to :user
  belongs_to :competition

  validates :user_id, :competition_id, presence: true
end
