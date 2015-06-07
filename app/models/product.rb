class Product < ActiveRecord::Base
	belongs_to :category
	belongs_to :vendor
	has_many :units
end
