class User < ApplicationRecord
  has_secure_password
  validates :email, :first_name, :last_name, :role, presence: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
  enum role: [:user, :admin]
end
