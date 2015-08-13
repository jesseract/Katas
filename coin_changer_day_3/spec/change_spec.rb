require_relative 'spec_helper'
require_relative '../coin_changer_v3'

describe Change do
  let(:change) { Change.new }
  it 'makes change for a dollar' do
    expect(change.make_change(100)).to eq [25, 25, 25, 25]
  end

  it 'makes change for 30 cents' do
    expect(change.make_change(30)).to eq [25, 5]
  end

  it 'make change for 40' do
    expect(change.make_change(40)).to eq [25, 10, 5]
  end

  it 'make change for 43' do
    expect(change.make_change(43)).to eq [25, 10, 5, 1, 1, 1]
  end

  it 'make change for 0' do
    expect(change.make_change(0)).to eq []
  end
end
