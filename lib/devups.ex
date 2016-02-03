defmodule Devups do
  defmodule Fibonacci do

    def fib(0) do 0 end
    def fib(1) do 1 end
    def fib(n) do
      fib(n-1) + fib(n-2)
    end
  end

# defmodule Devups do
  defmodule TailCallFib do
    def fib(0, _, accumulator) do
      accumulator
    end

    def fib(n, previous, accumulator) do
      fib(n-1, previous + accumulator, previous)
    end

    def fib(n) do
      fib(n, 1, 0)
    end
  end

  defmodule MakingChange do
    def execute(n) do
      Enum.map(coins, &countCoins(n, &1, []))
    end

    def countCoins(n, coin, accum) do
      if (n - coin) >= 0 do
        accum = List.flatten([accum, coin])
        n = n - coin
        if n == 0 do
          accum
        else
          countCoins(n, coin, accum)
        end
      end
    end

    def coins do
      [25,10,5,1]
    end
  end
end
