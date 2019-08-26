defmodule TestthingTest do
  use ExUnit.Case
  doctest Testthing

  test "greets the world" do
    assert Testthing.hello() == :world
  end
end
