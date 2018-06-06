class User < ApplicationRecord
  validates_presence_of :username, :password
  validates :username, presence: true, uniqueness: true
  validates :password, presence: true
  has_secure_password
end
