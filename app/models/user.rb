class User < ActiveRecord::Base
  has_many :tasks,
    dependent: :destroy,
    inverse_of: :user

  validates_presence_of :first_name
  validates_presence_of :last_name
end
