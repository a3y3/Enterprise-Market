class Rfq < ApplicationRecord
	belongs_to :commodity_type
	belongs_to :commodity_type_description
	belongs_to :commodity_type_uom
end
