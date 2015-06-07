class Product < ActiveRecord::Base
	belongs_to :category
	belongs_to :vendor
	has_many :units
	has_many :thoughts
	has_many :rates
	has_many :images
end
