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


require 'rspec/core' 

class RomanNumeral

  def romanize(numeral)
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
      while numeral >= num
        result << letter
        numeral -= num
      end
    end
    result
  end 
    
#     while numeral >= 10
#       result << "X"
#       numeral -= 10
#     end
#     if numeral == 9
#       result << "IX"
#       numeral -= 9
#     elsif numeral >= 5
#       result << "V"
#       numeral -= 5
#     elsif numeral == 4
#       result << "IV"
#       numeral -= 4
#     end
#     result << "I" * numeral
#   end
 end

    
describe RomanNumeral do 
  let (:romannumeral) { RomanNumeral.new }
  
  it "converts 1 to I" do 
   expect(romannumeral.romanize(1)).to eq "I"
  end

  it "converts 5 to V" do 
    expect(romannumeral.romanize(5)).to eq "V"
  end

  it "converts 10 to X" do 
    expect(romannumeral.romanize(10)).to eq "X"
  end

  it "converts 20 to X" do 
    expect(romannumeral.romanize(20)).to eq "XX"
  end

   it "converts 30 to X" do 
     expect(romannumeral.romanize(30)).to eq "XXX"
   end

  it "converts 4 to IV" do
    expect(romannumeral.romanize(4)).to eq "IV"
  end

  it "converts 9 to IX" do
    expect(romannumeral.romanize(9)).to eq "IX"
  end

  
end 
