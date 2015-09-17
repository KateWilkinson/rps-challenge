# RPS Challenge

A basic Rock, Paper, Scissors web game, written in Ruby with a Sinatra server following OOD and TDD methodologies.

Task:

The Makers Academy Marketing Array ( **MAMA** ) asked us to provide a game for them. Their daily grind is pretty tough and they need time to steam a little.
Our task was to provide a _Rock, Paper, Scissors_ game for MAMA so they can play on the web. We were provided with the following user stories:

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

Functionality

- the marketeer should be able to enter their name before the game
- the marketeer will be presented the choices (rock, paper and scissors)
- the marketeer can choose one option
- the game will choose a random option
- a winner will be declared

Basic Rules

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock

My Implementation

- The game can be played either in IRB or using the web application interface, as a one player game where the user plays against the computer.
- An instance of the 'Game' class is initialised with a player (instance of class 'Player') and an opponent (instance of class 'Opponent')
- The player has the ability to choose rock, paper or scissors (game.player.choose('rock' or 'paper' or 'scissors') - an error message is raised both in IRB and in my web application if the player tries to input anything other than one of those options.
- The opponent's choice is randomly selected from the three options.
- game.outcome tells the player if they've won, lost or drawn based on the basic rules.

To install & run

```
git clone https://github.com/KateWilkinson/rps-challenge.git
cd rps-challenge
bundle install
rspec
rackup
```
Visit ```localhost:9292```
Run tests using ```rspec```

To do

- Web app currently has no styling
- Extend the game to 2 players
- Extend the game to Rock, Paper, Scissors, Lizard, Spock
