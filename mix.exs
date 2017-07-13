defmodule Absinthe.Phoenix.Mixfile do
  use Mix.Project

  def project do
    [app: :absinthe_phoenix,
     version: "1.4.0-beta.1",
     elixir: "~> 1.4",
     elixirc_paths: elixirc_paths(Mix.env),
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_),     do: ["lib"]

  def application do
    [extra_applications: [:logger]]
  end

  defp deps do
    [
      {:absinthe, "~> 1.4.0-beta.1"},
      {:phoenix, "~> 1.0 or ~> 1.3.0-rc"},
      {:phoenix_pubsub, "~> 1.0 or ~> 1.3.0-rc"},
      {:poison, "~> 2.0"},
    ]
  end
end
