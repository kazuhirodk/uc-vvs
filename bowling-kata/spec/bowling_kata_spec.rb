require 'spec_helper'

describe BowlingKata do
  game = BowlingKata.new

  context 'when player got a gutter ball' do
    it 'should score 0' do

      expect(game.score).to eq(0)
    end
  end

  context 'when player got a all ones game' do
    it 'should score 20' do

    end
  end
end
