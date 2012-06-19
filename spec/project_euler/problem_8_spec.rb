require 'spec_helper'

describe ProblemEight do

  before(:each) do
    @p8 = ProblemEight.new
  end

  it "gets the product of five integers" do
    number_array = [1, 2, 3, 4, 5]
    @p8.product_of_five(number_array).should == 120
  end

  it "gets the highest product of five consecutive numbers" do
    number_array = [1, 1, 1, 1, 1, 1, 5, 5, 5, 5, 5, 1, 1, 1, 1, 1, 1, 1, 1]
    @p8.highest_five_product(number_array).should == 3125
  end

  it "creates an array from a file" do
    #pending "Used this test to make sure the file was coming across right"
    @p8.build_array_from_file("big_number.txt").class.should == Array
  end

  it "solves problem 8 of Project Euler" do
    number_array = @p8.build_array_from_file("big_number.txt")
    input_array = @p8.format_contents(number_array)
    @p8.highest_five_product(input_array).should == 40824
  end

end
