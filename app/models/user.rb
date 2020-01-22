class User < ApplicationRecord
    has_secure_password
    has_many :user_teams
    validates_presence_of :password
    validates_uniqueness_of :username
end
