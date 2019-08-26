defmodule KV do
  @moduledoc """
  Documentation for KV.
  """

  @doc """
  Hello world.

  ## Examples

      iex> KV.hello
      :world

  """
  def hello do
    "hello " <> "world"
    |>IO.puts
  end

  def hello(name) do
    "hello " <> name
  end


end
