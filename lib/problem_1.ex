defmodule Problem_1 do
  @moduledoc """
    http://projecteuler.net/problem=1

    Multiples of 3 and 5

    If we list all the natural numbers below 10 that are multiples of 3 or 5, we
    get 3, 5, 6 and 9. The sum of these multiples is 23.

    Find the sum of all the multiples of 3 or 5 below 1000.

    ## Example

      iex> Problem_1.solution
      233168
  """

  def solution do
    sum_multiple_of_3_and_5_upto(1000)
  end


  @doc """
    iex> Problem_1.sum_multiple_of_3_and_5_upto(10)
    23
  """
  def sum_multiple_of_3_and_5_upto(max_number) do
    multiples_of_3_or_5(1..(max_number - 1))
      |> Enum.reduce fn(x, acc) -> x + acc end
  end

  @doc """
    iex> Problem_1.multiples_of_3_or_5(1..9)
    [3,5,6,9]
  """
  def multiples_of_3_or_5(range) do
    Enum.reject range, fn(x) -> (rem(x, 3) != 0) && (rem(x, 5) != 0) end
  end

end
