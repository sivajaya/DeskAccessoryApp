class Employee < ActiveRecord::Base
  validates :emp_id, :name, :email_id, :mobile_no, :designation, presence: true
end
