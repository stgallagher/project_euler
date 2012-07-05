require 'spec_helper'

describe ProblemEleven do

  before(:each) do
    @p11 = ProblemEleven.new
    @grid = @p11.format_contents(@p11.build_array_from_file("grid_numbers.txt"))
    square = []
    @square = @p11.fill_square(square, @grid, 0, 4, 20)
  end

  it "builds an array of values from a file" do
    @p11.build_array_from_file("grid_numbers.txt").class.should == Array
  end

  it "transforms an array of strings of multiple two digit strings into an array of integers" do
    preformatted_array = ["08 02 20 48", "27 05 82 32", "12 43 61 04"]
    @p11.format_contents(preformatted_array).should == [8, 2, 20, 48, 27, 5, 82, 32, 12, 43, 61, 4]
  end

  it "parcels a square set out of a larger square set" do
    @p11.square_parceler(4, @grid).should == 70600674
  end

  it "determines total side length of a grid based on the size of the side of its component parcels" do
    @p11.grid_length_finder(4, @grid).should == 20
  end

  it "fills a square with the appropriate numbers" do
    square = []
    @p11.fill_square(square, @grid, 0, 4, 20).should == [8, 2, 22, 97, 49, 49, 99, 40, 81, 49, 31, 73, 52, 70, 95, 23]
  end

  it "finds the max of the rows multiplied" do
    @p11.row_max_multiplier(@square, 4).should == 9507960
  end

  it "finds the max of the cols multiplied" do
    @p11.col_max_multiplier(@square, 4).should == 6514520
  end

  it "finds the max of the upward diagonal multiplied" do
    @p11.upward_diagonal_max_multiplier(@square, 4).should == 24468444
  end

  it "finds the max of the downward diagonal multiplied" do
    @p11.downward_diagonal_max_multiplier(@square, 4).should == 279496
  end

  it "finds the max product of a single line of a parcel, attempting products of all rows, cols, and diagonals" do
    @p11.parcel_max_product(@square, 4).should == 24468444
  end

  it "solves problem 11 of Project Euler" do
    @p11.problem_11_solver("grid_numbers.txt", 4).should == 70600674
  end

end
