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

    numbers.each do |n, letter|
      while number >= n
        result << letter
        number -= n
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

  it "converts 4 to IV" do
    expect(romannumeral.romanize(4)).to eq "IV"
  end

  it "converts 5 to V" do
    expect(romannumeral.romanize(5)).to eq "V"
  end

  it "converts 10 to X" do
    expect(romannumeral.romanize(10)).to eq "X"
  end

  it "converts 20 to XX" do
    expect(romannumeral.romanize(20)).to eq "XX"
  end

end
