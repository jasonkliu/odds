class Comment < ActiveRecord::Base
  belongs_to :event
  validates :guess, numericality: { only_integer: true }
  validates :commenter, presence: true, length: { minimum: 1 }
end
