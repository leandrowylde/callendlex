defmodule Callendlex.Repo do
  use Ecto.Repo,
    otp_app: :callendlex,
    adapter: Ecto.Adapters.Postgres
end
