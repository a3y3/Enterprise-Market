class CommodityType < ApplicationRecord
	has_many :rfqs
	has_many :commodity_type_eoms
	has_many :commodity_type_descriptions
end
