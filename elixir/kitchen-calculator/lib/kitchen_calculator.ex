defmodule KitchenCalculator do
  def get_volume({_, number}), do: number
  
  def to_milliliter({ :cup, number }), do: { :milliliter, number * 240 }
  def to_milliliter({ :fluid_ounce, number }), do: { :milliliter, number * 30 }
  def to_milliliter({ :teaspoon, number }), do: { :milliliter, number * 5 }
  def to_milliliter({ :tablespoon, number }), do: { :milliliter, number * 15 }
  def to_milliliter({ :milliliter, number }), do: { :milliliter, number }
  
  def from_milliliter({ _, value }, :cup = unit), do: { unit, value / 240 }
  def from_milliliter({ _, value }, :fluid_ounce = unit), do: { unit, value / 30 }
  def from_milliliter({ _, value }, :teaspoon = unit), do: { unit, value / 5 }
  def from_milliliter({ _, value }, :tablespoon = unit), do: { unit, value / 15 }
  def from_milliliter({ _, value }, :milliliter = unit), do: { unit, value }
  
  def convert(volume_pair, unit), do: to_milliliter(volume_pair) |> from_milliliter(unit)
end