class User < ApplicationRecord
    # use the has_secure_password macros to make sure that the password is hashed using bcrypt.
    has_secure_password

    # validate the full_name, email and phone n to make sure that all users have unique usernames on the model.

    validates :full_name, uniqueness: true
    validates :phone_number, uniqueness: true
    validates :email, uniqueness: true
end