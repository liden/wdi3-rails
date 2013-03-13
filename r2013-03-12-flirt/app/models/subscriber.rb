# == Schema Information
#
# Table name: subscribers
#
#  id              :integer          not null, primary key
#  username        :string(255)
#  email           :string(255)
#  password_digest :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Subscriber < ActiveRecord::Base
  attr_accessible :username, :email, :password, :password_confirmation
  has_secure_password
end
