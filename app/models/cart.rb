class Cart < ActiveRecord::Base
	has_many :line_items, dependent: :destroy
	has_one :user 
end
