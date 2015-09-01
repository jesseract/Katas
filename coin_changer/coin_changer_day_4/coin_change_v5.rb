class Change
  def coins
    [25, 10, 5, 1]
  end

  def make_change(amount)
    change = []
    coins.each do |coin|
      x = amount / coin
      x.times{change << coin}
      amount %= coin
    end
    change
  end
end


require 'rspec/core'

describe Change do
  let(:change) { Change.new }
  it 'makes change for a dollar' do
    expect(change.make_change(100)).to eq [25, 25, 25, 25]
  end

  it 'makes change for 30 cents' do
    expect(change.make_change(30)).to eq [25, 5]
  end

  it 'makes change for 40 cents' do
    expect(change.make_change(40)).to eq [25, 10, 5]
  end

  it 'makes change for 43 cents' do
    expect(change.make_change(43)).to eq [25, 10, 5, 1, 1, 1]
  end

  it 'makes change for 0 cents' do
    expect(change.make_change(0)).to eq []
  end
end
