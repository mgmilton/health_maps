class User < ApplicationRecord
  has_secure_password
  validates_presence_of :email, :name
  validates_uniqueness_of :email
  validates :password, presence: true, on: :creates
  validates :password, presence: true, on: :update, allow_blank: true
  validates_confirmation_of :password
end
