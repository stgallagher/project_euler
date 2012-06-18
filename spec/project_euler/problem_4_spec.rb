require 'spec_helper'

describe ProblemFour do

  before(:each) do
    @p4 = ProblemFour.new
  end

  it "returns true if a number is a presentation of a palindrome" do
    @p4.number_is_palindrome?(23232).should == true
  end

  it "returns false if a number is not a palindrome" do
    @p4.number_is_palindrome?(23242).should == false
  end

  it "returns true for even numbered palindrome" do
    @p4.number_is_palindrome?(2332).should == true
  end

  it "returns false if an even numbered digits are not a palindrome" do
    @p4.number_is_palindrome?(2342).should == false
  end

  it "returns true for a large palindrome" do
    @p4.number_is_palindrome?(1231231234321321321).should == true
  end

  it "finds the largest two digit palindrome" do
    @p4.greatest_two_digit_palindrome.should == 9009
  end

  it "finds the largest three digit palindrome" do
    @p4.greatest_three_digit_palindrome.should == 906609
  end

end
