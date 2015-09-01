class Change
  def coin_changer(amount)
    change = []
    coins = [100, 25, 10, 5, 1]

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

  it "makes change for 75 cents" do
    expect(change.coin_changer(75)).to eq [25, 25, 25]
  end

  it "makes change for 35 cents" do
    expect(change.coin_changer(35)).to eq [25, 10]
  end

  it "makes change for 40 cents" do
    expect(change.coin_changer(40)).to eq [25, 10, 5]
  end

  it "makes change for 43 cents" do
    expect(change.coin_changer(43)).to eq [25, 10, 5, 1, 1, 1]
  end

  it "makes change for 0 cents" do
    expect(change.coin_changer(0)).to eq []
  end

  it "makes change for 165 cents" do
    expect(change.coin_changer(165)).to eq [100, 25, 25, 10, 5]
  end

end
