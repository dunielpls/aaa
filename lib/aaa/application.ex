defmodule AAA.Application do
  use Application

  @impl true
  def start(_type, _args) do
    children = [
      AAA.Repo,
      #AAA.Web
      #AAA.RADIUS?
      #AAA.TACACS?
    ]

    Supervisor.start_link(children, [
      strategy: :one_for_one,
      name: AAA.Supervisor
    ])
  end

  @impl true
  def config_change(_changed, _new, _removed) do
    :ok
  end
end

