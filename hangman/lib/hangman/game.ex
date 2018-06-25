defmodule Hangman.Game do # convention for game.ex nested in hangman dir

  defstruct( # default naming is the verbose module
    turns_remaining: 7,
    game_state: :initializing,
    letters:    []
  )

  def new_game() do
    #%{ # Dave calls this a map, but it's mutable in a sense; we don't need mutability here
    #  turns_remaining: 7,
    #  game_state: :initializing
    #}
    %Hangman.Game{
      letters: Dictionary.random_word |> String.codepoints
    }
  end

end
