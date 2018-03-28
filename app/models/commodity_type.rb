class CommodityType < ApplicationRecord
	has_many :rfqs
	has_many :commodity_type_uoms
	has_many :commodity_type_descriptions
end
