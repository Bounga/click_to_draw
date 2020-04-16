defmodule ClickToDrawWeb.PageController do
  use ClickToDrawWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
