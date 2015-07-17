class Accessary < ActiveRecord::Base
 has_many :peripherals, :through => :accessory_peripherals
 has_many :accessory_peripherals, :dependent => :destroy
 has_many :employees
 has_many :moniters
 has_many :systems
 validates :employee_id, :moniter_id, :system_id, :items, presence:true
end
