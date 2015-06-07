class Shipment < ActiveRecord::Base
	has_many :orders
end
