class Show < ActiveRecord::Base
  has_many :competitions

  validates :title, presence: true
end
