defmodule FizzBuzzTest do
  use ExUnit.Case
  doctest FizzBuzz

  test "returns :ok if file name is correct" do
    file_name = "numbers.txt"

    assert "1,2,3,4,5,10,15,20" = FizzBuzz.build(file_name)
  end
end
