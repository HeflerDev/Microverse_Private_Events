class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User',foreign_key: :user_id
  has_many :hosts, foreign_key: 'attended_event_id'
  has_many :attendees, through: :hosts
  
  #belongs_to :creator, foreign_key: :user_id, class_name:'User'
  #has_many :hosts,foreign_key:'attended_event_id'
  #has_many :attendees, through: :hosts

  def self.past?(date)
      if date <= Time.now
        return true
      else
        false
      end
  end
end
