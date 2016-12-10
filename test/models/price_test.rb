require 'test_helper'

class PriceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test 'should not save empty price' do
    price = Price.new
    
    price.save
    refute price.valid?
  end
  
  test 'should save valid price' do
    price = Price.new
    
    price.title = 'My Price'
    price.description = 'My price is very special'
    
    price.save
    assert price.valid?
  end
  
  test 'should not save duplicate price title' do
    price1 = Price.new
    price1.title = 'My Price'
    price1.description = 'My price is very special.'
    price1.save
    assert price1.valid?

    price2 = Price.new
    price2.title = 'My Price'
    price2.description = 'My price is very special.'
    price2.save
    refute price2.valid?
    
  end
  
end

