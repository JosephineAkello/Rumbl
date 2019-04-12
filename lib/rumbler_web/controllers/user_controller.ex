defmodule RumblerWeb.UserController do
  use RumblerWeb, :controller

  alias Rumbler.Accounts.User
  alias Rumbler.Accounts

  @spec index(Plug.Conn.t(), any()) :: Plug.Conn.t()
  def index( conn, _params) do
    users = Accounts.list_users()
    render( conn, "index.html", users: users)
  end

  def show(conn, %{"id"=> id}) do
    user =Accounts.get_user(id)
    render(conn, "show.html", user: user)
end
def new(conn, _params) do
  changeset = Accounts.change_user(%User{})
  render(conn, "new.html", changeset: changeset)
end

end