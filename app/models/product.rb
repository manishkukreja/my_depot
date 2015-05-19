class Product < ActiveRecord::Base
	belongs_to :category
	has_many :line_items

	validates :title , :description  , :category_id, :price	,:quantity , :active , presence: true
	validates :category_id , :price , :quantity , numericality: true
	validates :title, uniqueness: true
end
