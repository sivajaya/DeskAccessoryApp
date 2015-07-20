class Employee < ActiveRecord::Base
  validates :emp_id, :name, :email_id, :mobile_no, :designation, presence: true
  has_one :moniter
  has_one :system
  belongs_to :accessary
end
