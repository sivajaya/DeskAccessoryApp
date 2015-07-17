class Peripheral < ActiveRecord::Base
  has_many :accessaries, :through => :accessory_peripherals
  has_many :accessory_peripherals, :dependent => :destroy
  validates :name, presence: true
end
