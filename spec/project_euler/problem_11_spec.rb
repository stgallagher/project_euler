require 'spec_helper'

describe ProblemEleven do

  before(:each) do
    @p11 = ProblemEleven.new
  end

  it "builds an array of values from a file" do
    @p11.build_array_from_file("grid_numbers.txt").class.should == Array
  end

  it "transforms an array of strings of multiple two digit strings into an array of integers" do
    preformatted_array = ["08 02 20 48", "27 05 82 32", "12 43 61 04"]
    @p11.format_contents(preformatted_array).should == [8, 2, 20, 48, 27, 5, 82, 32, 12, 43, 61, 4]
  end

end
