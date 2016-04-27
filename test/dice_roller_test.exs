defmodule DiceRollerTest do
  use ExUnit.Case

  test "Regex matches all supported forms" do
    dice_regex = DiceRoller.dice_regex
    assert [_, "1"] = Regex.run dice_regex, "1"
    assert [_, "1", "d6"] = Regex.run dice_regex, "1d6"
    assert [_, "100", "d60"] = Regex.run dice_regex, "100d60"
    assert [_, "10", "d10", "s10"] = Regex.run dice_regex, "10d10s10"
  end

  test "Shouldn't return :ok for high numbers / dice" do
    assert {:error, "Don't roll that many dice"} = DiceRoller.roll_dice("1000d6")
    assert {:error, _} = DiceRoller.roll_dice("6d1000")
  end

  
  test "Should return negative numbers" do
    assert -5 = DiceRoller.roll_dice("-5")
    assert 0 > DiceRoller.roll_dice("1d6-7")
    assert 0 >  DiceRoller.roll_dice("-2d6")
  end
end
