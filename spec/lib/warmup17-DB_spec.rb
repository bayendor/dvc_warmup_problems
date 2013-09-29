require 'spec_helper'
require 'warmup17-DB'

describe MultiplicationTable do
  it "is a MultiplicationTable" do
    expect(subject).to be_a(MultiplicationTable)
  end

  it "generates a table of size 1" do
    expect(subject.generate_table(1)).to eq([[1]])
  end

  it "generates a table of size 2" do
    expect(subject.generate_table(2)).to eq([[1,2], [2,4]])
  end

  it "generates a table of size 5" do
    expect(subject.generate_table(5)).to eq([[1,2,3,4,5], [2,4,6,8,10],
                                             [3,6,9,12,15], [4,8,12,16,20],
                                             [5,10,15,20,25]])
  end

  it "prints a table of size 1" do
    subject.generate_table(1)
    expect(subject.print_table).to eq(1..1)
  end

  it "prints a table of size 2" do
    subject.generate_table(2)
    expect(subject.print_table).to eq(1..2)
  end

  it "prints a table of size 10" do
    subject.generate_table(10)
    expect(subject.print_table).to eq(1..10)
  end

end