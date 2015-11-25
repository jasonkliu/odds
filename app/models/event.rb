class Event < ActiveRecord::Base
  validates :number, numericality: { only_integer: true }
  validates :text, presence: true, length: { minimum: 5 }
end
