require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  fixtures :products  
  
    
  test "attribute must not be empty" do 
    product=Product.new
    assert product.invalid?
    assert product.errors[:title].any?
    assert product.errors[:description].any?
    assert product.errors[:image_url].any?
    assert product.errors[:price].any?
  end 
  
  test "price should be above 0 " do 
    
    testproduct=Product.new(
    title:"xxx", 
    description: "xxxxdfddfd",
    image_url: "dfd.jpg")
    
    testproduct.price=-1
    
    assert testproduct.invalid?
    assert_equal ["must be greater than or equal to 0.01"], testproduct.errors[:price]
    
    testproduct.price=1
    
    assert testproduct.valid?
    
  end 
  
  test "image_url should be follow certain format" do 
    def new_product(image_url)
      Product.new(title:"xxxsdfdf",     description: "xxxxdfddfd",     price: 10, image_url: image_url)
    end 
    
    ok=%w{ fred.jpg fred.png FRED.JPG FRED.Jpg http://a.b.c/x/y/z/fred.gif }
    bad=%w{ fred.doc fred.gif/more fred.gif.more }
    
    ok.each do |name|
      assert new_product(name).valid?, "#{name} shouldn't be invalid!"
    end 
    
    bad.each do |name|
      assert new_product(name).invalid?, "#{name} shouldn't be valid!"
    end 
  
  end 
  
  test "title should be unqiue " do 
    product=Product.new(title: products(:ruby).title, 
        description: "xxxxdfddfd",
    image_url: "dfd.jpg", 
    price:10 )
    
    assert product.invalid? 
  end 
  
end
