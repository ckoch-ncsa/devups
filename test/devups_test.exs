defmodule DevupsTest do
  use ExUnit.Case
  doctest Devups

  test "the truth" do
    assert 1 + 1 == 2
  end
  defmodule Fibonacci do
    use ExUnit.Case
    test "Devups.Fibonacci.fib(0)" do
      assert Devups.Fibonacci.fib(0) == 0
    end

    test "Devups.Fibonacci.fib(1)" do
      assert Devups.Fibonacci.fib(1) == 1
    end

    test "Devups.Fibonacci.fib(2)" do
      assert Devups.Fibonacci.fib(2) == 1
    end

    test "Devups.Fibonacci.fib(3)" do
      assert Devups.Fibonacci.fib(3) == 2
    end

    test "Devups.Fibonacci.fib(4)" do
      assert Devups.Fibonacci.fib(4) == 3
    end

    test "Devups.Fibonacci.fib(5)" do
      assert Devups.Fibonacci.fib(5) == 5
    end

    test "Devups.Fibonacci.fib(6)" do
      assert Devups.Fibonacci.fib(6) == 8
    end

    test "Devups.Fibonacci.fib(7)" do
      assert Devups.Fibonacci.fib(7) == 13
    end

    test "Devups.Fibonacci.fib(8)" do
      assert Devups.Fibonacci.fib(8) == 21
    end

    test "Devups.Fibonacci.fib(9)" do
      assert Devups.Fibonacci.fib(9) == 34
    end

    test "Devups.Fibonacci.fib(10)" do
      assert Devups.Fibonacci.fib(10) == 55
    end

    test "Devups.Fibonacci.fib(11)" do
      assert Devups.Fibonacci.fib(11) == 89
    end
  end

  defmodule TailCallFib do
    use ExUnit.Case

    test "Devups.TailCallFib.fib(0)" do
      assert Devups.TailCallFib.fib(0) == 0
    end

    test "Devups.TailCallFib.fib(1)" do
      assert Devups.TailCallFib.fib(1) == 1
    end

    test "Devups.TailCallFib.fib(2)" do
      assert Devups.TailCallFib.fib(2) == 1
    end

    test "Devups.TailCallFib.fib(3)" do
      assert Devups.TailCallFib.fib(3) == 2
    end

    test "Devups.TailCallFib.fib(4)" do
      assert Devups.TailCallFib.fib(4) == 3
    end

    test "Devups.TailCallFib.fib(5)" do
      assert Devups.TailCallFib.fib(5) == 5
    end

    test "Devups.TailCallFib.fib(6)" do
      assert Devups.TailCallFib.fib(6) == 8
    end

    test "Devups.TailCallFib.fib(7)" do
      assert Devups.TailCallFib.fib(7) == 13
    end

    test "Devups.TailCallFib.fib(8)" do
      assert Devups.TailCallFib.fib(8) == 21
    end

    test "Devups.TailCallFib.fib(9)" do
      assert Devups.TailCallFib.fib(9) == 34
    end

    test "Devups.TailCallFib.fib(10)" do
      assert Devups.TailCallFib.fib(10) == 55
    end

    test "Devups.TailCallFib.fib(11)" do
      assert Devups.TailCallFib.fib(11) == 89
    end

    test "Devups.TailCallFib.fib(22)" do
      assert Devups.TailCallFib.fib(22) == 17711
    end

    test "Devups.TailCallFib.fib(44)" do
      assert Devups.TailCallFib.fib(44) == 701408733
    end
  end

  defmodule MakingChange do
    use ExUnit.Case

    test "one penny == [1]" do
      assert Devups.MakingChange.execute(1) == [1]
    end

    test "2 pennies == [1,1]" do
      assert Devups.MakingChange.execute(2) == [1,1]
    end
  end
end
