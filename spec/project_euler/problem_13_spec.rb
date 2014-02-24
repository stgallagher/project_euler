require 'spec_helper'

describe ProblemThirteen do

  before(:each) do
    @p13 = ProblemThirteen.new
    @values = @p13.format_contents(@p13.build_array_from_file("large_sum.txt"))
  end

  it "builds an array of values from a file" do
    @p13.build_array_from_file("large_sum.txt").class.should == Array
  end

  it "formats array of strings of integers to integers" do
    preformatted_array = ["834324234", "3242323", "23423424"]
    @p13.format_contents(preformatted_array).should == [834324234, 3242323, 23423424]
  end

  it "sums a file of large integers" do
    @p13.sum_of_large_integers("large_sum.txt").should == 5537376230390876637302048746832985971773659831892672
  end

  it "solves problem 13" do
    @p13.problem_13_solver.should == 5537376230
  end

end
