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
  let(:change) { Change.new}

  it "returns 4 quarters for 100" do
    expect(change.coin_changer(100)).to eq [25, 25, 25, 25]
  end

  it "make change for 85 cents" do
    expect(change.coin_changer(85)).to eq [25, 25, 25, 10]
  end

  it "makes change for 90 cents" do
    expect(change.coin_changer(90)).to eq [25, 25, 25, 10, 5]
  end

  it "makes change for 93 cents" do
    expect(change.coin_changer(93)).to eq [25, 25, 25, 10, 5, 1, 1, 1]
  end
end
