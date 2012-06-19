require 'spec_helper'

describe ProblemSeven do

  before(:each) do
    @p7 = ProblemSeven.new
  end

  it "should find the 10th prime number" do
    @p7.prime_finder(10).should == 29
  end

  it "should find the 10001st prime number" do
    @p7.prime_finder(10001).should == 123
  end

end
