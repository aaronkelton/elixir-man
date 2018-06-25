defmodule Dictionary do
  def hello do
    IO.puts("Hello Dallas!")
  end

  def random_word do
    word_list()
    |> Enum.random()
  end

  def word_list do
    "../assets/words.txt"
    |> Path.expand(__DIR__)
    |> File.read!()
    |> String.split(~r{\n})
  end

  def swap({a,b}) do
    IO.puts "{ #{b}, #{a} }"
  end

  # not really if/else, but still conditional
  def twins_conditional(a, b) do
    div(a,b) == 1 && rem(a,b) == 0
  end

  def twins(a, a) do
    true
  end

  def twins(_, _) do
    false
  end
  #twins(4, 5) # => false
  #twins(5, 5) # => true
end
