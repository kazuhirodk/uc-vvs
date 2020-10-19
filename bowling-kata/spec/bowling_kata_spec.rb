require 'spec_helper'

describe BowlingKata do
  context 'when player got a gutter ball' do
    it 'should score 0' do
      game = BowlingKata.new

      expect(game.score).to eq(0)
    end
  end
end
