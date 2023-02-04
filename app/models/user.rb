class User < ApplicationRecord
  validates :display_name, :email, presence: true

  has_secure_password

  # Support Devise DB column name
  def password_digest
    encrypted_password
  end

  def password_digest=(value)
    self.encrypted_password = value
  end
end
