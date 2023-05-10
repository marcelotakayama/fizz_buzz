defmodule FizzBuzzTest do
  use ExUnit.Case
  doctest FizzBuzz

  test "when a file exists, it returns the content" do
    file_name = "arquivo.txt"
    expected_result = "Conteúdo do arquivo"

    File.write(file_name, expected_result)

    result = FizzBuzz.build(file_name)

    assert result == expected_result

    File.rm(file_name)
  end

  test "when the file does not exist, it returns an error" do
    # Arrange
    file_name = "invalid.txt"

    result = FizzBuzz.build(file_name)

    assert result == "File not found"
  end
end
