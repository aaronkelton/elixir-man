defmodule Hangman do
  alias Hangman.Game, as: Game # leave off `as` clause for implicit understanding

  #def new_game() do
  #  Game.new_game()
  #end

  defdelegate new_game(), to: Game # clarifies that Hangman.new_game -> Game.new_game

  # if you want to say Hangman.init_game, but Game#new_game is your function
  #defdelegate init_game(), to: Hangman.Game, as: :new_game
end
