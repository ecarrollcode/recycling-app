class MailingList < ApplicationRecord
  self.table_name = 'MailingList'
  self.primary_key =  'user_id'
end
