defmodule Chat.PageController do
  use Phoenix.Controller

  plug :action

  def index(conn, _params) do
    render conn, "index.html", messages: Chat.History.messages
  end
end
