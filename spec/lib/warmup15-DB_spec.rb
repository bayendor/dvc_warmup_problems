require 'spec_helper'
require 'warmup15-DB'

describe TruthTable do
  it "is a TruthTable class" do
    expect(subject).to be_a(TruthTable)
  end

  it "accepts an expression string" do
    truth_table = subject.generate('A')
    expect(subject.generate(truth_table)).to include('A')
  end

  it ""



end

