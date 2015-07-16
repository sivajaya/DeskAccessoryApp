class System < ActiveRecord::Base
    validates :size, :name, presence: true
end
