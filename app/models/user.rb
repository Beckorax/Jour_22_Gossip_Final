class User < ApplicationRecord
      has_secure_password
      has_many :gossips
       validates :password_digest, presence: true, length: { minimum: 6 }
end
