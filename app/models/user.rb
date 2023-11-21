class User < ApplicationRecord
    validates :username, presence: true
    validates :password, presence: true, length: {minimum:5, maximum:10}
end
