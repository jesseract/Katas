class Change

  def make_change(amount)
    change = []
    quarters = amount/25
    quarters.times { change << 25 }
    amount %= 25

    dimes = amount/10
    dimes.times { change << 10 }
    amount %= 10

    nickels = amount/5
    nickels.times { change << 5 }
    amount %= 5

    pennies = amount/1
    pennies.times { change << 1 }

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
