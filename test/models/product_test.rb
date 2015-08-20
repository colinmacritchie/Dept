require 'test_helper'

class ProductTest < ActiveSupport::TestCase

  test "product attributes must not be empty" do

    product = Product.new(title: "Test Title",
                          description: "test",
                          image_url: "zzz.jpg")
    product.price = -1
    assert product.inavlid?
    assert_equal "must be greater than or equal to 0.01",
        prodct.errors[:price].join('; ')

    product.price = 0
    assert product.invalid?
    assert_equal "must be greater than or equal to 0.01",
      product.errors[:price].join('; ')

    product.price = 1
    assert product.valid?

end
