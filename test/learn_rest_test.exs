defmodule LearnRestTest do
  use ExUnit.Case
  doctest LearnRest

  test "greets the world" do
    assert LearnRest.hello() == :world
  end
end
