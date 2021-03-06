class User < ApplicationRecord
  validates :userName, presence: true, length: { minimum: 3, maximum: 25 }, uniqueness: { case_sensitive: false }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i.freeze
  validates :email, presence: true, length: { minimum: 4, maximum: 15 }, uniqueness: { case_sensitive: false },
                    format: { with: VALID_EMAIL_REGEX }
end
