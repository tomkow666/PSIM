# Czas zakupu oraz ceny wypełniamy w momencie sprzedaży
# Dodajmy funkcję is_sold, sprawdzającą, czy czas zakupu nie jest nullem
class Unit < ActiveRecord::Base
	belongs_to :order
	belongs_to :product
end
