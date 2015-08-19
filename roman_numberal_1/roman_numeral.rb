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

class Roman


 def romanize(number)
   numerals = {
     1 => "I",
     5 => "V"}
    #  10 => "X",
    #  50 => "L",
    #  100 => "C",
    #  500 => "D",
    #  1000 => "M" }



 end
end

require 'rspec/core'

describe Roman do
 let(:roman) { Roman.new }
  it 'converts 5 to V' do
    expect(roman.romanize(5)).to eq "V"
  end

  it "converts 6 to VI" do
    expect(roman.romanize(6)).to eq "VI"
  end

end
