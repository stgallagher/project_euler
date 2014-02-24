require 'spec_helper'

describe ProblemFourteen do

  before(:each) do
    @p14 = ProblemFourteen.new
  end

  it "calculates a Collatz sequence" do
    @p14.collatz_sequence(13).should == [13, 40, 20, 10, 5, 16, 8, 4, 2, 1]
  end

  it "finds the integer, under one million, that has the longest Collatz sequence" do
    @p14.problem_14_solver.should == 837799
  end

end
