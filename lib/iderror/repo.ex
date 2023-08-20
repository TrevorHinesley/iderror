defmodule Iderror.Repo do
  use Ecto.Repo,
    otp_app: :iderror,
    adapter: Ecto.Adapters.Postgres
end
