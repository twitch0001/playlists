defmodule Playlists.Application do
  use Application

  def start(_type, _args) do
    children = [
      Plug.Cowboy.child_spec(scheme: :http, plug: Playlists.API.Router, options: [port: 2772])    
    ]

    opts = [strategy: :one_for_one, name: Playlists.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
