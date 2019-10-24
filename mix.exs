defmodule Phoenix.PubSub.Nats.Mixfile do
  use Mix.Project

  def project do
    [
      app: :phoenix_pubsub_nats,
      version: "0.0.1",
      elixir: "~> 1.6",
      description: description(),
      package: package(),
      source_url: "https://github.com/xflagstudio/phoenix_pubsub_nats",
      deps: deps(),
      docs: [readme: "README.md", main: "README"]
    ]
  end

  def application do
    [extra_applications: [:logger]]
  end

  defp deps do
    [
      {:poolboy, ">= 1.4.2"},
      {:phoenix_pubsub, ">= 1.0.0"},
      {:gnat, ">= 0.7.0"},
      {:libring, "~> 1.0"}
    ]
  end

  defp description do
    """
    Nats adapter for the Phoenix framework PubSub layer.
    """
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README.md", "LICENSE"],
      contributors: ["Masahiro Tokioka"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/xflagstudio/phoenix_pubsub_nats"}
    ]
  end
end
