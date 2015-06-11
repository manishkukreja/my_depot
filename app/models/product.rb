class Product < ActiveRecord::Base
	belongs_to :category
	has_many :line_items

	validates :title , :description  , :category_id, :price	,:quantity , :active , presence: true
	validates :category_id , :price , :quantity , numericality: true
	validates :title, uniqueness: true

	before_destroy :ensure_not_referenced_by_any_line_item

# 	private
# # ensure that there are no line items referencing this product
# 	def ensure_not_referenced_by_any_line_item
# 		if line_items.count.zero?
# 		return true
# 		else
# 		errors.add(:base, 'Line Items present')
# 		return false
# 		end
# 	end



end
