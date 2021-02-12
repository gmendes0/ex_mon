defmodule ExMon do
  def create_player(name, move_average, move_random, move_heal) do
    ExMon.Player.build name, move_average, move_random, move_heal
  end
end
