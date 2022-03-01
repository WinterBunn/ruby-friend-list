class User < ApplicationRecord

    before_save { self.email = email.downcase }
    has_many :articles
    validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 3, maximum: 25 }
    #with uniqueness: { case_sensitive: false } as the name implies, this makes sure AAA is equal to aaa
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, uniqueness: { case_sensitive: false }, length: { maximum: 105 }, format: { with: VALID_EMAIL_REGEX }
    #format validates that is a string with a valid email format
    has_secure_password
end
