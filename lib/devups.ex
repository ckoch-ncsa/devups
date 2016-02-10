defmodule Devups do
  defmodule Fibonacci do

    def fib(0) do 0 end
    def fib(1) do 1 end
    def fib(n) do
      fib(n-1) + fib(n-2)
    end
  end

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
end
defmodule Main do
  defmodule MakingChange do
    def makeCoins(quantity, denom) do
      case quantity do
        0 -> []
        1 -> [denom]
        _ -> Enum.map((1..quantity), fn (_) -> denom end)
      end
    end

    def execute(amount) do
      makeChange(amount, [25, 10, 5, 1], [])
    end

    def makeChange(0, _, acumm) do
      acumm
    end

    def makeChange(amount, coinValues, change) do
      [coin | coinValues] = coinValues
      coins = makeCoins(div(amount, coin), coin)
      change = Enum.into(coins, change)
      makeChange(rem(amount, coin), coinValues, change)
    end
  end

  # defmodule MakingChange do
  #   def execute(n) do
  #     Enum.map(coins[head | tail], &makeChange(n, &1, []))
  #   end

  #   def coins do
  #     [25,10,5,1]
  #   end

  #   def makeCoins(accumulator, denomination) do
  #     List.insert_at(accumulator, -1, denomination)
  #     # Enum.map((1..quantity), fn(_) -> denomination end)
  #   end

  #   def makeChange(0, coin, accumulator) do
  #     makeCoins(accumulator, coin)
  #   end

  #   def makeChange(n, coin, accumulator) do
  #     if n-coin >= 0 do makeChange(n-coin, coin, makeCoins(accumulator, coin)) end
  #     # makeChange(n-coin, coin, accumulator)
  #   end
  # end
end
