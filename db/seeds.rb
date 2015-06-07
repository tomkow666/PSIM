# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

product_list = [
  [ "Kefir", 1, 1, 2.99, 0.22, "czkdsa klxzckldas klcz"],
  [ "Maślanka", 1, 1, 3.99, 0.22, "czxsdac zxcxzdsa czx"],
  [ "Ryż", 2, 2, 5.99, 0.22, "czxsdac zxcxzdsa czx"]
]

product_list.each do |name, category_id, vendor_id, netto_price, vat, description|
  Product.create( category_id: category_id, vendor_id: vendor_id, name: name, netto_price: netto_price, vat: vat, description: description );
end