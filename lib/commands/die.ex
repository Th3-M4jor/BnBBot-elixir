defmodule BnBBot.Commands.Die do
  require Logger

  @spec call(%Nostrum.Struct.Message{}, [String.t()]) :: any()
  def call(%Nostrum.Struct.Message{} = msg, _args) do
    Logger.debug("Recieved a die command")

    if BnBBot.Util.is_owner_msg?(msg) do
      BnBBot.Util.react(msg, true)
      System.stop(0)
    end
  end
end
