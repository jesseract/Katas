def update_quality(items)
  items.each do |item|
    modify_sell_in(item) unless item.name == "Sulfuras, Hand of Ragnaros"
    if item.name == 'Aged Brie'
      handle_aged_brie(item)
    elsif item.name == 'Backstage passes to a TAFKAL80ETC concert'
      handle_backstage_passes(item)
    elsif item.name == "Conjured Mana Cake"
      handle_mana_cake(item)
    elsif item.name == "+5 Dexterity Vest"
      normal_item(item, modifier)
    end
  end
end

def handle_aged_brie(item)
  if item.sell_in > 0
    modify_value(item, 1)
  else
    modify_value(item, 2)
  end
end

def handle_backstage_passes(item)
  if item.sell_in > 10 
    modify_value(item, 1)
  elsif item.sell_in == 0
    item.quality = 0
  elsif item.sell_in <= 5
    modify_value(item, 3)
  else
    modify_value(item, 2)
  end
end

def handle_mana_cake(item)
  normal_item(item, 2)
end


def normal_item(item, modifier)
  item.sell_in -= 1
  if item.sell_in < 0
    item.quality = item.quality - (2 * modifier)
  elsif item.sell_in >= 0 && item.quality >= 0 
    item.quality = item.quality - (1 * modifier)
  else
    item.quality == 0
  end
end

def modify_value(item, modifier)
  item.quality = item.quality + (1 * modifier)
end

def modify_sell_in(item)
  item.sell_in -= 1
end



# DO NOT CHANGE THINGS BELOW -----------------------------------------

Item = Struct.new(:name, :sell_in, :quality)

# We use the setup in the spec rather than the following for testing.
#
# Items = [
#   Item.new("+5 Dexterity Vest", 10, 20),
#   Item.new("Aged Brie", 2, 0),
#   Item.new("Elixir of the Mongoose", 5, 7),
#   Item.new("Sulfuras, Hand of Ragnaros", 0, 80),
#   Item.new("Backstage passes to a TAFKAL80ETC concert", 15, 20),
#   Item.new("Conjured Mana Cake", 3, 6),# ]
