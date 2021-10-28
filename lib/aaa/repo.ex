defmodule AAA.Repo do
  use Ecto.Repo,
    otp_app: :aaa,
    adapter: Ecto.Adapters.Postgres
end
