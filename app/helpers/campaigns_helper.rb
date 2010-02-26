module CampaignsHelper
	def charge_type_form_column record, input_name
		record.class::DEFAULT_TYPES.collect{|s|
			radio_button(:record, :charge_type, s) + s
		}
	end
end
