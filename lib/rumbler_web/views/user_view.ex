defmodule RumblerWeb.UserView do
  use RumblerWeb, :view
  alias Rumbler.Accounts

  def first_name(%Accounts.User{name: name}) do
    name
    |> String.split(" ")
    |> Enum.at(0)
  end
end
