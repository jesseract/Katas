require 'rspec/core'
require_relative '../game.rb'

describe Game do
  subject(:game) { Game.new }

  describe '#roll' do
    it 'adds a ball to the game' do
      expect{ subject.roll(9) }.to change{ subject.balls.length }.by(1)
    end

    it 'saves that roll to an array' do
      subject.roll(7)
      subject.roll(3)
      subject.roll(1)
      subject.roll(0)
      expect(subject.balls).to eq [7, 3, 1, 0]
    end
  end

  describe '#score' do
    it 'sums all previous rolls' do
      subject.roll(1)
      subject.roll(1)
      subject.roll(1)
      subject.roll(1)
      expect(subject.score).to eq 4
    end

    it 'handles spares' do
      subject.roll(1)
      subject.roll(9)
      subject.roll(5)
      subject.roll(4)
      expect(subject.score).to eq 24
    end
  end
end
