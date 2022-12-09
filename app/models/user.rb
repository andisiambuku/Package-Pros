class User < ApplicationRecord
    # use the has_secure_password macros to make sure that the password is hashed using bcrypt.
    # validate the full_name to make sure that all users have unique usernames on the model.
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
    validates :password, presence: true
    # has_many :parcels
end