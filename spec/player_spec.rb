require 'player'

describe Player do

  describe 'choose' do

    it { is_expected.to respond_to(:choose).with(1).arguments }

    it 'returns choice if the player makes a valid choice' do
      subject.choose('rock')
      expect(subject.weapon).to eq 'rock'
    end

    it 'raises error message if choice is invalid' do
      expect { subject.choose('banana') }.to raise_error 'Please choose either rock, paper or scissors'
    end

  end
end