DiceRoller
==========

This is a general dice roller, for use in a number of games.

The primary exposed method is `DiceRoller.roll_dice`, which takes in a string such as `3d6`, rolls the appropriate dice, and returns the result.

Right now, there are a number of features common to specific games, but also some notable ways to improve the app.

Features
--------

* Addition - Add multiple terms together with a `+`, e.g. `1d20 + 3`

* Keep - Keep only a certain number of dice. Common in stat generation for d20 games. Sample Usage - `4d6k3`

* Success Dice - Count the number of dice about a certain number. Common in World of Darkness games. Sample Usage - `8d10k7`

* Fudge Dice - Instead of using a die with normal pips on the side, use Fudge / FATE dice, which feature a `-` symbol, nothing, or a `+` symbol. Summing the number of `+`'s and subtracting the number of `-`'s gives you the result. Sample Usage - "4f"

Planned Features
----------------

* Subtraction - Sometimes the last term is a subtraction due to a skill modifier, but we should really be able to handle general subtraction use cases. Sample Usage - `1d20 - 1`

* Exploding Dice - Many systems have people reroll dice if they are high enough. In this case, we want to reroll dice if they are at least a certain number. Sample Usage - `4d6e6`


Feel free to file more feature requests at https://github.com/KevinGreene/DiceRoller
