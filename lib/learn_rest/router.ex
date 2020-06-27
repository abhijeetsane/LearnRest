defmodule LearnRest.Router do
  use PlugRest.Router
  use Plug.ErrorHandler

  plug :match
  plug :dispatch

  resource "/hello", LearnRest.HelloResource, "Abhijeet"
  resource "/random",LearnRest.Random

  match "/match" do
    send_resp(conn, 200, "Match")
  end
end
