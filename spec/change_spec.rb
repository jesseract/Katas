require_relative 'spec_helper'
require_relative '../coin_changer_v2'

describe Change do
  let(:change) { Change }

  it "returns 1 penny for 1 cents" do
    expect(change.make_change(1)).to eq([1])
  end

  it "returns four quarters for 100 cents" do
    expect(change.make_change(50)).to eq([25, 25])
  end

  it "returns five quarters and two dimes for 145 cents" do
    expect(change.make_change(145)).to eq([25, 25, 25, 25, 25, 10, 10])
  end

  it "returns three quarters and a nickel for 80 cents" do
    expect(change.make_change(80)).to eq([25, 25, 25, 5])
  end

  it "returns one quarter, one dime, one nickel and one penny for 41 cents" do
    expect(change.make_change(41)).to eq([25, 10, 5, 1])
  end

end
