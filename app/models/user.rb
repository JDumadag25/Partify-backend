class User < ApplicationRecord
  validates_presence_of :name, :password
  validates :password, length: { in: 6..20 }
  has_secure_password
end
