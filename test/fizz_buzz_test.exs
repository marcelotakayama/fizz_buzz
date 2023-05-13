defmodule FizzBuzzTest do
  use ExUnit.Case
  doctest FizzBuzz

  test "when a file exists, it returns the content" do
    file_name = "file.txt"
    expected_result = "1,2,3,4,5,10,15,20"

    File.write(file_name, expected_result)

    result = FizzBuzz.build(file_name)

    assert result == [1, 2, 3, 4, 5, 10, 15, 20]

    File.rm(file_name)
  end

  test "when the file does not exist, it returns an error" do
    file_name = "invalid.txt"

    result = FizzBuzz.build(file_name)

    assert result == "Error reading the file: ¨enoent"
  end
end
