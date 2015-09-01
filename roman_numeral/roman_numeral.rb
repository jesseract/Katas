require 'byebug'
# Build a function that will take any integer (1 to 1000) and return its Roman Numeral counterpart.
#
# romanize(1000) #=> M
# romanize(900)  #=> CM
# romanize(700)  #=> DCC
# romanize(500)  #=> D
# romanize(450)  #=> CDL
# romanize(225)  #=> CCXXV
# romanize(75)   #=> LXXV
# romanize(37)   #=> XXXVII
# romanize(18)   #=> XVIII
# romanize(9)    #=> IX
# romanize(4)    #=> IV
# romanize(2)    #=> II
# romanize(1)    #=> I

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

    numbers.each do |num, letter|
      while number >= num
        result << letter
        number -= num
      end
    end
    result
  end
end


#     while number >= 10
#       result << "X"
#       number -= 10
#     end
#     if number == 9
#       result << "IX"
#       number -= 9
#     elsif number >= 5
#       result << "V"
#       number -= 5
#     elsif number == 4
#       result << "IV"
#       number -= 4
#     end
#     result << "I" * number
#   end
# end


require 'rspec/core'
describe RomanNumeral do
  let (:romannumeral) { RomanNumeral.new }

  it "converts 1 to I" do
    expect(romannumeral.romanize(1)).to eq "I"
  end

  it "converts 2 to II" do
    expect(romannumeral.romanize(2)).to eq "II"
  end

  it "converts 5 to V" do
    expect(romannumeral.romanize(5)).to eq "V"
  end

  it "converts 6 to VI" do
    expect(romannumeral.romanize(6)). to eq "VI"
  end

  it "converts 7 to VII" do
    expect(romannumeral.romanize(7)).to eq "VII"
  end

  it "converts 10 to X" do
    expect(romannumeral.romanize(10)).to eq "X"
  end

  it "converts 12 to XII" do
    expect(romannumeral.romanize(12)).to eq "XII"
  end

  it "converts 20 to XX" do
    expect(romannumeral.romanize(20)).to eq "XX"
  end

  it "converts 30 to XXX" do
    expect(romannumeral.romanize(30)).to eq "XXX"
  end

  it "converts 4 to IV" do
    expect(romannumeral.romanize(4)).to eq "IV"
  end

  it "converts 9 to IX" do
    expect(romannumeral.romanize(9)).to eq "IX"
  end

  it "converts 1000 to M" do
    expect(romannumeral.romanize(1000)).to eq "M"
  end

end
