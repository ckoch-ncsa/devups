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
      # IO.puts n
      # IO.puts previous
      # IO.puts accumulator
      # IO.puts "********************"
      fib(n-1, previous + accumulator, previous)
    end

    def fib(n) do
      fib(n, 1, 0)
    end
  end

  defmodule MakingChange do
    def execute(n) do
      [n]
    end

    def countCoins(n) do

    end

    def coins do
      [25,10,5,1]
    end
  end
end
