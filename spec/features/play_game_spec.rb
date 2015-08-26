require 'spec_helper'
require 'game'

feature 'the player can enter their name' do

  scenario 'player is asked to enter their name' do
    visit '/'
    expect(page).to have_content 'Hello new player. Please enter your name.'
  end

  scenario 'player can enter their name and is greeted' do
    visit '/'
    fill_in('name', with: 'Kate')
    click_on('Submit name')
    expect(page).to have_content 'Welcome, Kate!'
  end

end

feature 'the player can begin a game' do

  before(:each) do
    visit '/'
    fill_in('name', with: 'Kate')
    click_on('Submit name')
  end

  scenario 'the player can click to begin a new game' do
    click_on('Begin new game')
    expect(page).to have_content 'Kate, when you\'re ready make your choice...'
  end

  scenario 'the player can enter and submit their choice' do
    click_on('Begin new game')
    expect(page).to have_selector('#Play')
  end

end

feature 'player can win or lose and start a new game' do
  before(:each) do
    visit '/'
    fill_in('name', with: 'Kate')
    click_on('Submit name')
    click_on('Begin new game')
    #allow any instance of Opponent to receive weapon and return rock
    allow_any_instance_of(Opponent).to receive(:weapon).and_return("scissors")
  end

  scenario 'player is told if they have won' do
    click_on('rock')
    expect(page).to have_content 'rock beats scissors, you win!'
  end

  scenario 'player is told if they have lost' do
    click_on('paper')
    expect(page).to have_content 'scissors beats paper, you lose :('
  end

  scenario 'player is told if they have drawn' do
    click_on('scissors')
    expect(page).to have_content "It's a draw!"
  end

  scenario 'player can click to play again' do
    click_on('rock')
    expect(page).to have_selector('#play_again')
  end

  scenario 'player is taken back to the choose page if they click play again' do
    click_on('rock')
    click_on('Play again?')
    expect(page).to have_content 'Kate, when you\'re ready make your choice...'
  end

end