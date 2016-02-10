# Make Change - Totes Works

# iex(25)> Main.makeChange(34)
# [25, 5, 1, 1, 1, 1]

# iex(26)> Main.makeChange(75)
# [25, 25, 25]

# iex(27)> Main.makeChange(76)
# [25, 25, 25, 1]

# iex(28)> Main.makeChange(79)
# [25, 25, 25, 1, 1, 1, 1]

# iex(29)> Main.makeChange(83)
# [25, 25, 25, 5, 1, 1, 1]

defmodule Main do
  def makeCoins(quantity, denom) do
    case quantity do
      0 -> []
      1 -> [denom]
      _ -> Enum.map((1..quantity), fn (_) -> denom end)
    end
  end

  def makeChange(amount) do
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
