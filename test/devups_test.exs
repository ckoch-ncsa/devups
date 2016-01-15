defmodule DevupsTest do
  use ExUnit.Case
  doctest Devups

  test "the truth" do
    assert 1 + 1 == 2
  end

  test "Devups.Fibonacci.doIt(100)" do
    assert Devups.Fibonacci.doIt(1) == 1

  end

  test "Devups.Fibonacci.doIt(100)" do
    assert Devups.Fibonacci.doIt(3) == 5

  end
end
