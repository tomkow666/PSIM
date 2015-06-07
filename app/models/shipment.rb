class Shipment < ActiveRecord::Base
	has_many :orders
	belongs_to :shipment_method
end
