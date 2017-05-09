# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Level1.delete_all
Level2.delete_all
Level3.delete_all
Cost.delete_all
l1 = Level1.create(name: 'G&A')
Level1.create(name: 'LOE')
l2 = Level2.create(name: 'Expense', level1_id: l1.id)


level3_list = [
	['Personal Meal', '8140-030'],
	['Meals & Entertainment', '8140-030'],
	['Air Travel', '8140-010'],
	['Hotel', '8140-010'],
	['3rd Party Deal Diligence', '8160-010'],
	['Taxi/Car Service', '8140-020'],
	['Rental Car', '8140-020'],
	['Office Expense', '8130-020'],
	['Dues/Subscriptions', '8130-070'],
	['Conferences/Seminars', '8140-040'],
	['Postage & Courier', '8130-060'],
	['Office Furniture & Equipment', '8130-030'],
	['Computer Services & Supplies', '8130-017'],
	['Training & Education', '8110-070']

]

level3_list.each do |name, code|
	Level3.create(name: name, code: code, level2_id: l2.id)
end

