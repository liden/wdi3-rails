# == Schema Information
#
# Table name: subscriptions
#
#  id         :integer          not null, primary key
#  plan       :string(255)
#  cost       :decimal(, )
#  duration   :integer
#  num_photos :integer
#  num_emails :integer
#  num_texts  :integer
#  is_alist   :boolean          default(FALSE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Subscription < ActiveRecord::Base
  attr_accessible :id, :plan, :cost, :duration, :num_photos, :num_emails, :num_texts, :is_alist
  has_many :subscribers, :inverse_of => :subscription
end
