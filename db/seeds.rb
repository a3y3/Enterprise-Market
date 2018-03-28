# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# CommodityType.create(name: "Steel", available_quantity: 23)
# CommodityType.create(name: "Polymer", available_quantity: 23)
# CommodityType.create(name: "Avalon", available_quantity: 23)
# CommodityType.create(name: "Iron", available_quantity: 23)
# CommodityType.create(name: "Zinc", available_quantity: 23)
# CommodityType.create(name: "Gold", available_quantity: 23)
# CommodityType.create(name: "Tires", available_quantity: 23)
# CommodityType.create(name: "Aluminium", available_quantity: 23)
# CommodityType.create(name: "Copper", available_quantity: 23)
# CommodityTypeDescription.create!(commodity_type_id: 1, description: "Stainless Steel HR Angle 50*50*3 SS 202 ANY")
# CommodityTypeDescription.create!(commodity_type_id: 1, description: "Galvanized CR Angle 100*50 S420MC Australian")
# CommodityTypeDescription.create!(commodity_type_id: 1, description: "MS Angle ISA 60*60*6 RINL")
# CommodityTypeDescription.create!(commodity_type_id: 2, description: "HDPE Opal F52H04 ANY")
# CommodityTypeDescription.create!(commodity_type_id: 2, description: "LDPE Opal F52H04 ANY")
# CommodityTypeDescription.create!(commodity_type_id: 2, description: "HDPE Opal F53H04 ANY")
CommodityTypeUom.create!(commodity_type_id: 1, uom: "m")
CommodityTypeUom.create!(commodity_type_id: 2, uom: "kg")
CommodityTypeUom.create!(commodity_type_id: 2, uom: "g")