require 'spec_helper'

describe ProblemTwelve do

  before(:each) do
    @p12 = ProblemTwelve.new
  end

  it "calculates the triangle sum" do
    @p12.trianglize(4).should == 10
    @p12.trianglize(8).should == 36
  end

  it "determines the factors" do
    @p12.factorize(4).should == [1, 2, 4]
    @p12.factorize(13).should == [1, 13]
    @p12.factorize(18).should == [1, 2, 3, 6, 9, 18]
  end

  it "counts factors for triangle numbers" do
    @p12.count_factors(4).should == 3
    @p12.count_factors(13).should == 2
    @p12.count_factors(18).should == 6
  end

end
