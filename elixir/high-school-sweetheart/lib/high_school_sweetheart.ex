defmodule HighSchoolSweetheart do
  def first_letter(name), do: String.trim(name) |> String.at(0)
  
  def initial(name), do: name |> first_letter() |> String.upcase() |> (fn name ->  "#{name}." end).()
  
  def initials(full_name) do
    full_name
    |> String.split(" ")
    |> (fn ([ f_name, l_name ]) -> initial(f_name) <> " " <> initial(l_name) end).()
  end

  def pair(full_name1, full_name2) do
      """
           ******       ******
         **      **   **      **
       **         ** **         **
      **            *            **
      **                         **
      **     #{initials(full_name1)}  +  #{initials(full_name2)}     **
       **                       **
         **                   **
           **               **
             **           **
               **       **
                 **   **
                   ***
                    *
      """
  end
end