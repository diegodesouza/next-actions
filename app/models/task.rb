class Task < ActiveRecord::Base
  belongs_to :user,
  inverse_of: :tasks

  validates_presence_of :title
  validates_presence_of :user
end
