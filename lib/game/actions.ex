defmodule ExMon.Game.Actions do
  alias ExMon.Game

  def fetch_move(move) do
    Game.player()
    |> Map.get(:moves)
    |> find_move(move)
  end

  defp find_move(moves, move) do
    moves
    |> Map.from_struct()
    |> Enum.find_value({:error, move}, fn {_key, value} ->
      if value === move do
        {:ok, move}
      end
    end)
  end
end
