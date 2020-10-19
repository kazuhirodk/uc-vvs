require 'spec_helper'

describe BowlingKata do
  context 'when player got a gutter ball' do
    game = BowlingKata.new

    for i in 1..20
      game.roll(0)
    end

    it 'should score 0' do
      expect(game.score).to eq(0)
    end
  end

  context 'when player got a all ones game' do
    game = BowlingKata.new

    for i in 1..20
      game.roll(1)
    end

    it 'should score 20' do
      expect(game.score).to eq(20)
    end
  end
end
