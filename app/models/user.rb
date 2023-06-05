class User < ActiveRecord::Base
    has_many :reviews
    has_many :Products, through: :reviews
end