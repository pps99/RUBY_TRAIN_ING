class User < ApplicationRecord
  has_many :posts,foreign_key: true
  has_secure_password
  validates :name, presence: true
  validates :email, uniqueness: true

end
