require_relative './gilded_rose'

describe "code" do
    #normally "code" would be the class name of the code we're testing. Ex: Item

    let(:initial_quality) { 5 }
    let(:initial_sell_in) { 2 }

    let(:item) { Item.new(name, initial_sell_in, initial_quality) }

    context "Normal item" do 
        let(:name) { "Normal item" } 

        describe "#modify_sell_in" do 
            before(:each) { normal_item(item, 2) }
            it "decreases by 1" do
                expect(item.sell_in).to eq 1
            end
        end

        describe "#normal_item" do 
            before(:each) { normal_item(item, 1) }
            it "decreases by 1" do
                expect(item.quality).to eq 4
            end

            context "normal item" do 
                let(:initial_sell_in) { 0 }

                it "decreases by 2 after sell_on date" do 
                    expect(item.quality).to eq 3
                end
            end
        end
    end


    context "Aged brie" do
        let(:name) { "Aged Brie" }

        describe "#handle_aged_brie" do 
            before(:each) { handle_aged_brie(item) }
            it "updates brie quality" do
                expect(item.quality).to eq 6 
            end

            context "Old Aged Brie" do
                let(:initial_sell_in) { 0 }
                it "is past sell date" do
                    expect(item.quality).to eq 7
                end
            end
        end

        describe "#modify_sell_in" do
            before(:each) {modify_sell_in(item) }  
            it "decreases sell_in" do
                expect(item.sell_in).to eq 1
            end
        end
    end


    context "Backstage passes" do
        let(:name) { "Backstage passes to a TAFKAL80ETC concert" }

        describe "#handle_backstage_passes" do
            before(:each) { handle_backstage_passes(item) }
            it "updates backstages passes quality" do 
                expect(item.quality).to eq 8
            end

            context "Backstage passes" do         
                let(:initial_sell_in) { 9 }
                it "increases value by 2 when concert is 5-10 days away" do
                    expect(item.quality).to eq 7
                end
            end

            context "Backstage passes" do
               let(:initial_sell_in) { 0 }
                it "shows value as 0 on the day of the concert" do 
                    expect(item.quality).to eq 0
                end
            end
        end
    end

    context "Mana cake" do
        let(:name) { "Conjured mana cake" }

        describe "#handle_mana_cake" do 
            before(:each) { handle_mana_cake(item) }
            it "updates mana cake quality" do
                expect(item.quality).to eq 3
            end
        end
    end

   context "Dexterity vest" do 
      let(:name) { "+5 Dexterity Vest" } 

     describe "#normal_item" do
         before(:each) { normal_item(item, 1) }
        it "updates vest quality" do 
           expect(item.quality).to eq 4
        end
     end
   end  
end
