class User < ApplicationRecord
  has_and_belongs_to_many :meetings
  has_many :action_items
  has_many :agenda_items
  has_many :comments

  has_secure_password
  before_validation :secure_password_digest
end
