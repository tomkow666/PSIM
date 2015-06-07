class Thought < ActiveRecord::Base
	belongs_to :product
	belongs_to :client
end
