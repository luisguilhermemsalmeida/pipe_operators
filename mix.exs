defmodule PipeOperators.MixProject do
  use Mix.Project

  def project do
    [
      app: :pipe_operators,
      version: "0.1.1",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),
      description: description(),
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [{:ex_doc, ">= 0.0.0", only: :dev, runtime: false}]
  end

  defp package() do
    [
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/luisguilhermemsalmeida/pipe_operators"}
    ]
  end

  defp description() do
    ~s"""
    This lib adds a "new" pipe operator that is similar to the Maybe type on other functional programming languages.
    """
  end
end
