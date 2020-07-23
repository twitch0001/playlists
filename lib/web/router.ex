defmodule Playlists.API.Router do
  use Plug.Router
  
  plug Plug.Logger
  plug :match
  plug :dispatch

  get "/" do
    send_resp(conn, 200, "Music api")
  end

  forward "/playlists"

  match _ do 
    send_resp(conn, 404, "Oops! Nothing here.")
  end
end
