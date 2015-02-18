class Customer < ActiveRecord::Base
  validates :long_name, uniqueness: true
end
