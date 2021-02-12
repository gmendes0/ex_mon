defmodule ExMon.Player do
  alias ExMon.Player.Moves

  @enforce_keys [:life, :name, :moves]
  @max_life 100

  defstruct [:life, :name, :moves]

  @doc """
    Return a player struct
  """
  def build(name, move_average, move_random, move_heal) do
    %__MODULE__{
      life: @max_life,
      moves: %Moves{
        move_average: move_average,
        move_heal: move_heal,
        move_random: move_random,
      },
      name: name,
    }
  end
end
