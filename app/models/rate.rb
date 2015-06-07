class Rate < ActiveRecord::Base
	belongs_to :product
	belongs_to :client
end
