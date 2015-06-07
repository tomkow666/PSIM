# Informację o przesyłce i zapłacie przenosimy do odpowiednich obiektów
# Relacja wygląda tak, ponieważ w jednej paczce może znajdować się wiele zamówień i za wiele zamówień można zapłacić w jednej płatności
class Order < ActiveRecord::Base
	belongs_to :payment
	belongs_to :shipment
	belongs_to :status
	has_many :units
	belongs_to :client
	belongs_to :employee
end
