class User < ApplicationRecord
    # We will need to use the has_secure_password macros to make sure that the password is hashed using bcrypt.
    #  We also need to validate the full_name to make sure that all users have unique usernames on the model.
    has_secure_password
    validates :full_name, uniqueness: { case_sensitive: false }
end
