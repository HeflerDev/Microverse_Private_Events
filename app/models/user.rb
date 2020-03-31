class User < ApplicationRecord

  has_many :created_events, foreign_key: 'user_id', class_name:"Event"
  has_many :hosts, foreign_key: 'attendee_id'
  has_many :attended_events, through: :hosts

  #has_many :hosts, foreign_key:'attendee_id'
  #has_many :created_events,class_name:"Event"
  #has_many :attended_events, through: :hosts
end
