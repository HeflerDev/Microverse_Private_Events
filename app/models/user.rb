class User < ApplicationRecord
  has_many :hosts
  has_many :created_events,class_name:"Event"
  has_many :attended_events, through: :hosts
end
