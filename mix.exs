defmodule Plug.Cowboy.MixProject do
  use Mix.Project

  @source_url "https://github.com/apollosoftwarexyz/plug_cowboy"
  @upstream_source_url "https://github.com/elixir-plug/plug_cowboy"
  @version "2.7.0"
  @description "A Plug adapter for Cowboy"

  def project do
    [
      app: :plug_cowboy,
      version: @version,
      elixir: "~> 1.15",
      deps: deps(),
      package: package(),
      description: @description,
      name: "Plug.Cowboy",
      docs: [
        main: "Plug.Cowboy",
        source_ref: "v#{@version}",
        source_url: @source_url,
        extras: ["CHANGELOG.md"]
      ],
      aliases: aliases()
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {Plug.Cowboy, []}
    ]
  end

  def deps do
    [
      {:plug, "~> 1.14.2"},
      # The cowboy webserver.
      {:cowboy, "~> 2.10.0"},
      # Documentation generation
      {:ex_doc, "~> 0.30.6", only: :docs},
      # HTTP request library for testing
      {:hackney, "~> 1.18.2", only: :test},
      # HTTP2 request library for testing
      {:kadabra, "~> 0.6.0", only: :test}
    ]
  end

  defp package do
    %{
      licenses: ["Apache-2.0"],
      maintainers: ["José Valim", "Gary Rennie"],
      links: %{"GitHub" => @source_url, "GitHub (upstream)" => @upstream_source_url}
    }
  end

  defp aliases do
    []
  end
end
