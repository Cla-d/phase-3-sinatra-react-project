class User < ActiveRecord::Base
    has_many :tasks
  
    validates :name, presence: true, uniqueness: true
  end