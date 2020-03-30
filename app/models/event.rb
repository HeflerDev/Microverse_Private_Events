class Event < ApplicationRecord
  belongs_to :creator, foreign_key: :user_id, class_name:'User'
  has_many :hosts
  has_many :attendees, through: :hosts
end