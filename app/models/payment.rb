class Payment < ActiveRecord::Base
	has_many :orders
	belongs_to :payment_method
end
