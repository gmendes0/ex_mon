defmodule ExMon.Game do
  use Agent

  def start(computer, player) do
    Agent.start_link fn -> %{
      computer: computer,
      player: player,
      turn: player,
      status: :started
    } end, name: __MODULE__
  end

  def info do
    Agent.get __MODULE__, & &1
  end
end
