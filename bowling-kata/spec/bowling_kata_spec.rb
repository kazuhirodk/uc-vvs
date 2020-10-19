require 'spec_helper'

def roll_many(numGames, numPins, game)
  for i in 1..numGames
    game.roll(numPins)
  end
end

def roll_spare(game)
  game.roll(5)
  game.roll(5)
end

def roll_strike(game)
  game.roll(10)
end

describe BowlingKata do
  context 'when player got a gutter ball' do
    game = BowlingKata.new

    roll_many(20, 0, game)

    it 'should score 0' do
      expect(game.score).to eq(0)
    end
  end

  context 'when player got a all ones game' do
    game = BowlingKata.new

    roll_many(20, 1, game)

    it 'should score 20' do
      expect(game.score).to eq(20)
    end
  end

  context 'when player got a spare followed by a 3 ball' do
    game = BowlingKata.new

    roll_spare(game)
    game.roll(3)

    it 'should score 16' do
      expect(game.score).to eq(16)
    end
  end

  context 'when player got a strike followed by 3 and a 4 ball' do
    game = BowlingKata.new

    roll_strike(game)
    game.roll(3)
    game.roll(4)

    it 'should score 24' do
      expect(game.score).to eq(24)
    end
  end

  context 'when player got a perfect game' do
    game = BowlingKata.new

    roll_many(12, 10, game)

    it 'should score 300' do
      expect(game.score).to eq(300)
    end
  end
end
