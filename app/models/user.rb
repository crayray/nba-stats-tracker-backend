class User < ApplicationRecord
    has_many :user_teams

    has_secure_password
end
