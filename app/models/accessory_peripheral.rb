class AccessoryPeripheral < ActiveRecord::Base
  belongs_to :accessary
  belongs_to :peripheral
end
