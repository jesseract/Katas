# This kata is especially difficult. It takes the Roman Numeral kata and builds on it.
#
# Build a function that takes an equation consisting of roman numerals and outputs the result of that function. It respects + - / and * as well as order of operations
#
# roman_math("X + X")            #=> 20
# roman_math("X + X * IV")       #=> 50
# roman_math("X + X * IV - III") #=> 47
# roman_math("X * X / II")       #=> 50
# roman_math("X * X * II")       #=> 200
# roman_math("L / V")            #=> 10
class RomanMath

  def roman_math
    result = ""

    numbers = [
      {"M" => 1000},
      {"CM" => 900},
      {"D" => 500},
      {"CDL" => 450},
      {"C" => 100},
      {"L" => 50},
      {"X" => 10},
      {"IX" => 9},
      {"V" => 5},
      {"IV" => 4},
      {"I" => 1}
    ]
  end

  def deromanize(letter)
    
  end


  #   numbers.each do |letter, num|
  # #take each item in the numbers array and loop over them
  #   while a >= num
  # #as long as the number in the array is greater than or equal to the num
  #   result << letter
  # #add the letter that goes with that number to the results string
  #   a -= num
  # #if the number you passed into the method as an argument is still bigger than num, loop again
  #   end
  # end
  # result
  # #return the string of letters
  # end

end


require 'rspec/core'
describe RomanMath do
  let(:romanmath) { RomanMath.new }

  it "converts numbers to numerals" do
    expect(romanmath.roman_math("X")).to eq "10"
  end

end
