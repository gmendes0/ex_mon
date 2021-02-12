defmodule ExMon.Player.Moves do
  @enforce_keys [:move_average, :move_random, :move_heal]

  defstruct [:move_average, :move_random, :move_heal]
end
