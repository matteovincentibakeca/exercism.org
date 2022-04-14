defmodule LogLevel do
  def to_label(level, legacy?) do
    cond do
      0 == level and not legacy? -> :trace
      1 == level -> :debug
      2 == level -> :info
      3 == level -> :warning
      4 == level -> :error
      5 == level and not legacy? -> :fatal
      true -> :unknown
    end
  end

  def alert_recipient(level, legacy?) do
    level 
    |> to_label(legacy?)
    |> (fn response, legacy? -> 
      cond do
        response == :error or response == :fatal -> :ops
        response == :unknown and legacy? -> :dev1
        response == :unknown -> :dev2
        true -> false
      end
    end).(legacy?)
  end
end