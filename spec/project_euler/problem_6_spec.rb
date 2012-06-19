require 'spec_helper'

describe ProblemSix do

  before(:each) do
    @p6 = ProblemSix.new
  end

  it "sums squares" do
    @p6.sum_of_squares(10).should == 385
  end

  it "squares sums" do
    @p6.squares_of_sums(10).should == 3025
  end

  it "differences the sums" do
    @p6.difference_of_the_sums(10).should == 2640
  end

  it "differences the sums - solution" do
    @p6.difference_of_the_sums(100).should == 25164150
  end

end
