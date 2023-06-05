class Review < ActiveRecord::Base
    belongs_to :Products
    belongs_to :user
  end