require 'spec_helper'

describe ProblemThree do

  before(:each) do
    @p3 = ProblemThree.new
  end

  it "primes generates an empty list for 1" do
    @p3.primes(1).should == []
  end

  it "primes generates [2] for 2" do
    @p3.primes(2).should == [2]
  end

  it "greatest prime factor" do
    @p3.highest_prime_factor(600851475143).should == 6857
  end

end

