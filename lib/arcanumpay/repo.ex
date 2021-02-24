defmodule Arcanumpay.Repo do
  use Ecto.Repo,
    otp_app: :arcanumpay,
    adapter: Ecto.Adapters.Postgres
end
