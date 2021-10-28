defmodule AAA.MixProject do
  use Mix.Project

  def project do
    [
      app: :aaa,
      name: "AAA",
      # description: "",
      version: "0.1.0",
      # xref: [exclude: [:exldap]],
      elixir: "~> 1.12",
      elixirc_paths: elixirc_paths(Mix.env()),
      # elixirc_options: [warnings_as_errors: true],
      compilers: Mix.compilers(),
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      mod: {AAA.Application, []},
      extra_applications: [
        :logger,
        :runtime_tools,
        :ssl,
        :crypto,
        :public_key
      ]
    ]
  end

  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  defp deps do
    [
      {:ecto_sql, "~> 3.6"},
      {:postgrex, ">= 0.0.0"},
      {:jason, "~> 1.2"},
      {:plug_cowboy, "~> 2.5"},

      {:floki, ">= 0.30.0", only: :test}
    ]
  end
end

