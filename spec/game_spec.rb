require 'game'

describe Game do

  subject { Game.new(player, opponent)}

  let(:player) { double :player, weapon: 'paper'}
  let(:opponent) { double :opponent, weapon: 'rock' }

  describe 'winner?' do
    it 'compares the items passed in by player and opponent' do
      expect(subject.winner?).to eq true
    end
  end

  describe 'outcome' do
    it 'declares a winner' do
      allow(subject).to receive(:winner?).and_return(true)
      expect(subject.outcome).to eq 'You won!!'
    end
  end

end