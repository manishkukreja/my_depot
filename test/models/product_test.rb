require 'test_helper'

class ProductTest < ActiveSupport::TestCase 

	fixtures :products 

  test "product meta data should not be empty" do 
  	product = Product.new(
        title: products(:one).title,
        description: "Amazing phone from xioami",
        quantity: 1,
        active: true,
        price: 200,
        category_id: 3
    )
  	assert product.valid?
  	assert product.errors[:title].any? , "Title can't be blank"
  end	


end
