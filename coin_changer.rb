# The coin changer is a simple kata. Build a function that will return an array of USD change [Quarters, Dimes, Nickels, Pennies] for any given integer.
#
# make_change(145) #=> [25, 25, 25, 25, 25, 10, 10]
# make_change(100) #=> [25, 25, 25, 25]
# make_change(75)  #=> [25, 25, 25]
# make_change(80)  #=> [25, 25, 25, 5]
# make_change(70)  #=> [25, 25, 10, 10]
# make_change(62)  #=> [25, 25, 10, 1, 1]
# make_change(4)   #=> [1, 1, 1, 1]
# make_change(0)   #=> []

def make_change(amount)
  change = []
  (amount/25).times{change << 25}
  quarters = amount %= 25

  (quarters/10).times{change << 10}
  dimes = quarters %= 10

  (dimes/5).times{change << 5}
  nickels = dimes %= 5

  (nickels/1).times{change << 1}

  return change

end