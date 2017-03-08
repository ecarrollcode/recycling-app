class MailingList < ApplicationRecord
  self.table_name = 'mailing_list'
  self.primary_key =  'user_id'
end
