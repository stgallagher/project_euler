require 'spec_helper'

describe ProblemTwo do

  before(:each) do
    @p2 = ProblemTwo.new
  end

  it "the 6th fibonacci number is 8" do
    @p2.fib(6).should == 8
  end

  it "5 fibonacci numbers should be 1, 2, 3, 5, 8" do
    @p2.fib_set(5).should == [0, 1, 1, 2, 3]
  end

  it "calculates the sum of even valued terms" do
    @p2.fib_set(10).should == [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
    @p2.even_fib_sum(10).should == 44
  end

  it "calculates the sum up to a given fibonacci number value" do
    @p2.calculate_even_fib_sum(35).should == 44
  end

  it "calculates the sum up to four million" do
    @p2.calculate_even_fib_sum(4000000).should == 4613732
  end

end
