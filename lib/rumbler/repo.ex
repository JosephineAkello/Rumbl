defmodule Rumbler.Repo do
  use Ecto.Repo,
    otp_app: :rumbler,
    adapter: Ecto.Adapters.Postgres
end
