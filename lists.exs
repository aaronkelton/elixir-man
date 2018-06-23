defmodule Lists do
  def len( [] ), do: 0
  def len( [ _head | tail ] ), do: 1 + len(tail)

  def sum( [] ), do: 0
  def sum( [ head | tail] ), do: head + sum(tail)

  def double( [] ), do: []
  def double([ head | tail ]), do: [ 2*head | double(tail) ]

  def square( [] ), do: []
  def square( [ head | tail ] ), do: [ head*head | square(tail) ]

  def sum_pairs( [] ), do: []
  def sum_pairs( [ head1, head2 | tail] ), do: [ head1 + head2 | sum_pairs(tail) ]

  #def even_length?([head|tail]), do
  #  if len(head|tail) % 2 == 0 do
  #    true
  #  else
  #    false
  #  end
  #end
end
