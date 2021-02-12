defmodule ExMon.Player do
  @enforce_keys [:life, :name, :move_average, :move_random, :move_heal]
  @max_life 100

  defstruct [:life, :name, :move_average, :move_random, :move_heal]

  @doc """
    Return a player struct
  """
  def build(name, move_average, move_random, move_heal) do
    %__MODULE__{
      life: @max_life,
      move_average: move_average,
      move_heal: move_heal,
      move_random: move_random,
      name: name,
    }
  end
end
