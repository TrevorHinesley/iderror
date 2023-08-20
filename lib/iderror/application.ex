defmodule Iderror.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      IderrorWeb.Telemetry,
      # Start the Ecto repository
      Iderror.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: Iderror.PubSub},
      # Start Finch
      {Finch, name: Iderror.Finch},
      # Start the Endpoint (http/https)
      IderrorWeb.Endpoint
      # Start a worker by calling: Iderror.Worker.start_link(arg)
      # {Iderror.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Iderror.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    IderrorWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
