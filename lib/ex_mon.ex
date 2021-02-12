defmodule ExMon do
  alias ExMon.Game
  alias ExMon.Game.Status
  alias ExMon.Player, as: Player

  @computer_name "computer"

  def create_player(name, move_average, move_random, move_heal) do
    Player.build name, move_average, move_random, move_heal
  end

  def start_game(player) do
    @computer_name
    |> create_player(:bite, :bijudama, :heal)
    |> Game.start(player)

    Status.print_round_message()
  end
end
