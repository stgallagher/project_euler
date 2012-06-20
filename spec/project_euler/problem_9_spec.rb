require 'spec_helper'

describe ProblemNine do

  before(:each) do
    @p9 = ProblemNine.new
  end

  it "determines if three integers added equals a specified sum" do
    @p9.three_added_equals_sum?(1, 2, 3, 6).should == true
    @p9.three_added_equals_sum?(1, 2, 3, 8).should == false
  end

  it "sums two squares" do
    @p9.sum_two_squares(2, 3).should == 13
  end

  it "find if set is a pythag triplet" do
    @p9.pythag_triplet?(3, 4, 5).should == true
    @p9.pythag_triplet?(3, 4, 6).should == false
  end

  it "finds the triplet for a sum that equals 1000" do
    #pending "Takes too long to run over and over again. Maybe fix later, probably not."
    @p9.pythag_triplet_finder(1000, 500).should == [200, 375, 425]
  end

  it "finds the solution to Problem 9 of Project Euler" do
    @p9.product_of_three(200, 375, 425).should == 31875000
  end

end
