defmodule Playlists.API.Router do
  use Plug.Router
  
  plug Plug.Logger

  plug :match
  plug Plug.Parsers, 
    parsers: [:json],
    pass: ["application/json"],
    json_decoder: Jason
  plug :dispatch

  get "/" do
    send_resp(conn, 200, "Music api")
  end

  get "/playlists/:id" do
    send_resp(conn, 200, "#{id}")
  end

  match _ do 
    send_resp(conn, 404, "Oops! Nothing here.")
  end
end
