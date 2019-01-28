class Event < ApplicationRecord

  has_and_belongs_to_many :students, :join_table => :students_events


end
