defmodule LearnRest.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Starts a worker by calling: LearnRest.Worker.start_link(arg)
      # {LearnRest.Worker, arg}
       {Plug.Cowboy, scheme: :http, plug: LearnRest.Router, options: [port: 4001]}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: LearnRest.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
