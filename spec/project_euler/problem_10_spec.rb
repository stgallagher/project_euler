require 'spec_helper'

describe ProblemTen do

  before(:each) do
    @p10 = ProblemTen.new
  end

  it "finds the sum of primes" do
    @p10.sum_of_primes(10) == 17
  end

  it "solves Problem 10 of Project Euler" do
    @p10.sum_of_primes(2000000) == 142913828922
  end

end

