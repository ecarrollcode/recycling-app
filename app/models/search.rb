# Search attributes:
# text:string 
# zip:string 
# slug:string:uniq

class Search < ApplicationRecord
	extend FriendlyId
	friendly_id :text, use: :slugged
	def should_generate_new_friendly_id?
		text_changed?
	end
end
