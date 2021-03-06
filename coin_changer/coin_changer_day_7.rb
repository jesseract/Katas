class Change
  def coin_changer(amount)
    change = []
    coins = [25, 10, 5, 1]

    coins.each do |coin|
      number_of_coins = amount / coin
      number_of_coins.times{ change << coin }
      amount %= coin
    end
    change
  end
end

require 'rspec/core'

describe Change do
  let(:change) { Change.new }
  it "makes change for 100" do
    expect(change.coin_changer(100)).to eq [25, 25, 25, 25]
  end

  it "makes change for 0" do
    expect(change.coin_changer(0)).to eq []
  end
end
