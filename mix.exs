defmodule LearnRest.MixProject do
  use Mix.Project

  def project do
    [
      app: :learn_rest,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {LearnRest.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
    {:plug_cowboy, "~> 2.0"},
    {:plug_rest, "~> 0.14"}
    ]
  end
end
