class RomanNumeral
  def romanize(number)
    result = ""
    numbers = [
      [1000, "M"],
      [900, "CM"],
      [500, "D"],
      [450, "CDL"],
      [100, "C"],
      [50, "L"],
      [10, "X"],
      [9, "IX"],
      [5, "V"],
      [4, "IV"],
      [1, "I"]
    ]

    numbers.each do |num, letters|
      while number >= num
        result << letters
        number -= num
      end
    end
    result
  end

end



require 'rspec/core'
describe RomanNumeral do
  let(:romannumeral) { RomanNumeral.new }

  it "converts 1 to I" do
    expect(romannumeral.romanize(1)).to eq "I"
  end

  it "converts 2 to II" do
    expect(romannumeral.romanize(2)).to eq "II"
  end

  it "converts 4 to VI" do
    expect(romannumeral.romanize(700)).to eq "DCC"
  end

  it "converts 5 to V" do
    expect(romannumeral.romanize(5)).to eq "V"
  end

  it "converts 9 to IX" do
    expect(romannumeral.romanize(9)).to eq "IX"
  end

  it "converts 18 to XVIII" do
    expect(romannumeral.romanize(18)).to eq "XVIII"
  end

  it "converts 37 to XXXVII" do
    expect(romannumeral.romanize(37)).to eq "XXXVII"
  end

  it "converts 75 to LXXV" do
    expect(romannumeral.romanize(75)).to eq "LXXV"
  end

  it "converts 225 to CCXXV" do
    expect(romannumeral.romanize(225)).to eq "CCXXV"
  end

  it "converts 700 to DCC" do
    expect(romannumeral.romanize(700)).to eq "DCC"
  end

  it "converts 900 to CM" do
    expect(romannumeral.romanize(900)).to eq "CM"
  end

  it "converts 1000 to M" do
    expect(romannumeral.romanize(1000)).to eq "M"
  end
  
end
