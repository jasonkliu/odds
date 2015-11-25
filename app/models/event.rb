class Event < ActiveRecord::Base
  has_many :comments
  validates :number, numericality: { only_integer: true }
  validates :text, presence: true, length: { minimum: 5 }
end
