class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, uniqueness: { case_sensitive: false }, length: { maximum: 20 },
                    format: { with: /\A(\S+)@(.+)\.(\S+)\z/, message: 'Email not valid' }
end
