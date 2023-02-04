class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :display_name, presence: true

  # has_secure_password

  # Support Devise DB column name
  # def password_digest
  #   encrypted_password
  # end

  # def password_digest=(value)
  #   self.encrypted_password = value
  # end
end
