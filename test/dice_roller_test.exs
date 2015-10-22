defmodule DiceRollerTest do
  use ExUnit.Case

  test "Regex matches all supported forms" do
    dice_regex = DiceRoller.dice_regex
    assert [_, "1"] = Regex.run dice_regex, "1"
    assert [_, "1", "d6"] = Regex.run dice_regex, "1d6"
    assert [_, "100", "d60"] = Regex.run dice_regex, "100d60"
    assert [_, "10", "d10", "s10"] = Regex.run dice_regex, "10d10s10"
  end

  test "Rolling dice should return the appropriate number of results" do
    for x <- [1, 2, 3, 10, 100] do
      {:ok, dice_array} =  DiceRoller.build_dice_array(x, 10)
      assert x == length dice_array
    end
  end

  test "Shouldn't return :ok for high numbers / dice" do
    {:error, _} = DiceRoller.build_dice_array(1000, 1)
    {:error, _} = DiceRoller.build_dice_array(1, 1000)
  end
  
end
